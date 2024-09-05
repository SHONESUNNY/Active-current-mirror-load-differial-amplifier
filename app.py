from flask import Flask, render_template, request, jsonify
import folium
from collections import deque

app = Flask(__name__)

# Example fantasy graph with imaginary distances and coordinates
fantasy_graph = {
    'Eldoria': {'Stormspire': 10, 'Verdant Hollow': 15, "Dragon's Lair": 30},
    'Stormspire': {'Eldoria': 10, 'Verdant Hollow': 5, 'Obsidian Peaks': 20},
    'Verdant Hollow': {'Eldoria': 15, 'Stormspire': 5, 'Obsidian Peaks': 10, 'Celestia Bay': 25},
    'Obsidian Peaks': {'Stormspire': 20, 'Verdant Hollow': 10, 'Celestia Bay': 15, 'Shadowfen': 50},
    'Celestia Bay': {'Verdant Hollow': 25, 'Obsidian Peaks': 15, 'Shadowfen': 10},
    'Shadowfen': {'Obsidian Peaks': 10, 'Celestia Bay': 10},
    "Dragon's Lair": {'Eldoria': 30}
}

# Coordinates for the fantasy locations (latitude, longitude)
location_coords = {
    'Eldoria': [28.6139, 77.2090],      # New Delhi
    'Stormspire': [28.7041, 77.1025],   # Example nearby location
    'Verdant Hollow': [28.6139, 77.2090],  # Example nearby location
    'Obsidian Peaks': [28.6139, 77.2090],   # Example nearby location
    'Celestia Bay': [28.6139, 77.2090],     # Example nearby location
    'Shadowfen': [28.6139, 77.2090],       # Example nearby location
    "Dragon's Lair": [28.6139, 77.2090]     # Example nearby location
}

# BFS to find the shortest path
def bfs_shortest_path(graph, start, goal):
    if start not in graph or goal not in graph:
        return None
    
    queue = deque([(start, [start])])
    visited = set()
    
    while queue:
        (current_node, path) = queue.popleft()
        
        if current_node in visited:
            continue
        
        visited.add(current_node)
        
        if current_node == goal:
            return path
        
        for neighbor in graph.get(current_node, {}):
            if neighbor not in visited:
                queue.append((neighbor, path + [neighbor]))
    
    return None

# Create a map with the path marked
def draw_map(graph, path=None):
    # Center the map at New Delhi
    m = folium.Map(location=[28.6139, 77.2090], zoom_start=12)

    # Add nodes (locations) to the map
    for location, coords in location_coords.items():
        folium.Marker(location=coords, popup=location, icon=folium.Icon(color='blue')).add_to(m)

    # If there is a path, draw it on the map
    if path:
        route_coords = [location_coords[loc] for loc in path]
        folium.PolyLine(
            route_coords,
            color="red",
            weight=5,  # Increase the weight to make it look more like a road
            opacity=0.7
        ).add_to(m)
    
    # Add a Tile Layer with road details
    folium.TileLayer('Stamen Toner').add_to(m)  # Or use another layer like 'OpenStreetMap'

    # Return the map as HTML
    return m._repr_html_()

@app.route('/')
def index():
    locations = list(fantasy_graph.keys())
    return render_template('index.html', locations=locations)

@app.route('/find_route', methods=['POST'])
def find_route():
    start = request.form.get('start')
    goal = request.form.get('goal')
    
    # Validate the input
    if start not in fantasy_graph or goal not in fantasy_graph:
        return jsonify({"error": "Invalid start or goal location."})
    
    # Find the shortest path using BFS
    route = bfs_shortest_path(fantasy_graph, start, goal)
    
    if route:
        route_str = ' -> '.join(route)
        map_html = draw_map(fantasy_graph, route)
        return jsonify({"route": route_str, "map_html": map_html})
    else:
        return jsonify({"route": "No route found.", "map_html": None})

if __name__ == '__main__':
    app.run(debug=True)

