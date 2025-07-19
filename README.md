# 🔧 Active Current Mirror Load Differential Amplifier

This project implements and simulates a differential amplifier with an active current mirror load using MOSFETs. The design leverages the benefits of high gain and compact layout, making it ideal for integrated analog front-ends.

---

## 📖 Theory

### ⚙️ Circuit Description

- **M1 & M2**: Differential input pair.
  **M3 & M4**: Current mirror active load.
- **I<sub>SS</sub>**: Bias current source.
- **C<sub>L</sub>**: Load capacitor = 10pF ,  Vdd =1.8V , Slew rate = 5V/usec
- **ICMR+** = Vdd-Vsg3+Vt =1.6V     **ICMR-** = Vgs3 + Vov3 = 0.8
- **Theoretical output resistance(approximate)**:   r<sub>o2</sub>||r<sub>o6</sub>
  **Theoretical voltage gain(approximate)**:  gm1( r<sub>o2</sub>||r<sub>o6</sub>)
- **V<sub>out</sub>**: Single-ended output taken from M2.
- <img width="377" height="366" alt="Screenshot 2025-07-19 120326" src="https://github.com/user-attachments/assets/aa75aa84-f59a-49be-9f1c-bd393a60ebd4" /> <img width="543" height="550" alt="image" src="https://github.com/user-attachments/assets/09e17a3f-dbf8-41cb-81f0-1af978005a10" />


### 🧪 Working Principle

The differential input causes a redistribution of the bias current I<sub>SS</sub> between M1 and M2. M3 and M4 form a current mirror that reflects the current from M1's branch to M2’s, producing a single-ended output. The high impedance offered by the active load results in a high voltage gain.

---

## 📊 Observations

| Parameter                        | Value    | Unit   | Notes                                      |
|----------------------------------|----------|--------|--------------------------------------------|
| Tail Current (I<sub>SS</sub>)    |  50      | µA  | Set using biasing circuit or current sink  |
| Overdrive Voltage (V<sub>ov</sub>) | X.XX   | V      | Typically 200–300mV                        |
| I<sub>D1</sub>, I<sub>D2</sub>   | X.XX     | µA/mA  | Measured from simulation or hand calcs     |
| V<sub>out</sub> (DC bias)        | X.XX     | V      | Output voltage at rest                     |
| Differential Gain (A<sub>d</sub>)| X.XX     | V/V    | Calculated or simulated                    |
| Output Resistance (R<sub>out</sub>) | X.XX  | kΩ     | Depends on MOSFET channel-length modulation |
| g<sub>m</sub> of M1/M2           | X.XX     | mS     | Based on I<sub>D</sub> and V<sub>ov</sub>  |
| r<sub>o</sub> of M2, M4          | X.XX     | kΩ     | Output impedance                           |
| Bandwidth                        | X.XX     | MHz    | -3dB cutoff frequency                      |
| CMRR                             | X.XX     | dB     | Measured or derived from Ad and Acm        |

---

## 📷 Simulation Results
- **Transient Response (Step Input)**  
  ![transient response](./images/transient.png)

- **AC Sweep (Gain vs Frequency)**  
  ![ac response](./images/ac_sweep.png)

---

## 📚 Learnings

- Practical use of current mirrors in analog ICs.
- Importance of device matching and biasing.
- Small signal modeling and gain estimation.

---

> **Note**: Adjust parameter values in the table after simulation.
