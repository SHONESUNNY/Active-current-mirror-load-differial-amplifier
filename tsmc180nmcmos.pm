* PSPICE TSMC180nm.lib file  RWN  04/18/2010
* library  file for transistor parameters for TMSC 0.18 micron process
* uses BIM parameters added 01/15/98
* can configure and attach to Nbreak and Pbreak transistors in PSpice
*
******************  180nm TSMC parameters  *************
*
* T14B SPICE BSIM3 VERSION 3.1 PARAMETERS
* downloaded from MOSIS 04/18/10:
* http://www.mosis.com/cgi-bin/cgiwrap/umosis/swp/params/
* tsmc-018/t92y_mm_non_epi_thk_mtl_params.txt
* SPICE 3f5 Level 8, Star-HSPICE Level 49, UTMOST Level 8, 
* ngSpice Level 8 or Level 49
* DATE: Jun  8/01
* LOT: T14B                  WAF: 06
* Temperature_parameters=Default
* VDD = 1V8 - 3V3
*
*********************************************************
*
*
.MODEL TSMCN.18 NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 4.1E-9
+XJ      = 1E-7           NCH     = 2.3549E17      VTH0    = 0.354505
+K1      = 0.5733393      K2      = 3.177172E-3    K3      = 27.3563303
+K3B     = -10            W0      = 2.341477E-5    NLX     = 1.906617E-7
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 1.6751718      DVT1    = 0.4282625      DVT2    = 0.036004
+U0      = 327.3736992    UA      = -4.52726E-11   UB      = 4.46532E-19
+UC      = -4.74051E-11   VSAT    = 8.785346E4     A0      = 1.6897405
+AGS     = 0.2908676      B0      = -8.224961E-9   B1      = -1E-7
+KETA    = 0.021238       A1      = 8.00349E-4     A2      = 1
+RDSW    = 105            PRWG    = 0.5            PRWB    = -0.2
+WR      = 1              WINT    = 0              LINT    = 1.351737E-8
*+XL      = -2E-8          XW      = -1E-8         
+ DWG     = 1.610448E-9
+DWB     = -5.108595E-9   VOFF    = -0.0652968     NFACTOR = 2.4901845
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0231564      ETAB    = -0.058499
+DSUB    = 0.9467118      PCLM    = 0.8512348      PDIBLC1 = 0.0929526
+PDIBLC2 = 0.01           PDIBLCB = -0.1           DROUT   = 0.5224026
+PSCBE1  = 7.979323E10    PSCBE2  = 1.522921E-9    PVAG    = 0.01
+DELTA   = 0.01           RSH     = 6.8            MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 7.7E-10        CGSO    = 7.7E-10        CGBO    = 1E-12
+CJ      = 1.010083E-3    PB      = 0.7344298      MJ      = 0.3565066
+CJSW    = 2.441707E-10   PBSW    = 0.8005503      MJSW    = 0.1327842
+CJSWG   = 3.3E-10        PBSWG   = 0.8005503      MJSWG   = 0.1327842
+CF      = 0              PVTH0   = 1.307195E-3    PRDSW   = -5
+PK2     = -1.022757E-3   WKETA   = -4.466285E-4   LKETA   = -9.715157E-3
+PU0     = 12.2704847     PUA     = 4.421816E-11   PUB     = 0
+PVSAT   = 1.707461E3     PETA0   = 1E-4           PKETA   = 2.348777E-3     )
*
*
*
.MODEL TSMCP.18 PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 4.1E-9
+XJ      = 1E-7           NCH     = 4.1589E17      VTH0    = -0.4120614
+K1      = 0.5590154      K2      = 0.0353896      K3      = 0
+K3B     = 7.3774572      W0      = 1E-6           NLX     = 1.103367E-7
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 0.4301522      DVT1    = 0.2156888      DVT2    = 0.1
+U0      = 128.7704538    UA      = 1.908676E-9    UB      = 1.686179E-21
+UC      = -9.31329E-11   VSAT    = 1.658944E5     A0      = 1.6076505
+AGS     = 0.3740519      B0      = 1.711294E-6    B1      = 4.946873E-6
+KETA    = 0.0210951      A1      = 0.0244939      A2      = 1
+RDSW    = 127.0442882    PRWG    = 0.5            PRWB    = -0.5
+WR      = 1              WINT    = 5.428484E-10   LINT    = 2.468805E-8
*+XL      = -2E-8          XW      = -1E-8          
+DWG     = -2.453074E-8
+DWB     = 6.408778E-9    VOFF    = -0.0974174     NFACTOR = 1.9740447
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1847491      ETAB    = -0.2531172
+DSUB    = 1.5            PCLM    = 4.8842961      PDIBLC1 = 0.0156227
+PDIBLC2 = 0.1            PDIBLCB = -1E-3          DROUT   = 0
+PSCBE1  = 1.733878E9     PSCBE2  = 5.002842E-10   PVAG    = 15
+DELTA   = 0.01           RSH     = 7.7            MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 7.11E-10       CGSO    = 7.11E-10       CGBO    = 1E-12
+CJ      = 1.179334E-3    PB      = 0.8545261      MJ      = 0.4117753
+CJSW    = 2.215877E-10   PBSW    = 0.6162997      MJSW    = 0.2678074
+CJSWG   = 4.22E-10       PBSWG   = 0.6162997      MJSWG   = 0.2678074
+CF      = 0              PVTH0   = 2.283319E-3    PRDSW   = 5.6431992
+PK2     = 2.813503E-3    WKETA   = 2.438158E-3    LKETA   = -0.0116078
+PU0     = -2.2514581     PUA     = -7.62392E-11   PUB     = 4.502298E-24
+PVSAT   = -50            PETA0   = 1E-4           PKETA   = -1.047892E-4    )
*
*
