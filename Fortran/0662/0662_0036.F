      CALL CHECK               C
      CALL CHECK               D
      CALL CHECK               E
      CALL CHECK               J
      CALL CHECK               K
      CALL CHECK               X
      CALL CHECK               Y
      CALL CHECK               Z
      PRINT *,'PASS'
      END
      SUBROUTINE CHECK         C
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (C01=C,C02=D,C03=E,C04=J,C05=K,C06=X,C07=Y,C08=Z)
      PARAMETER (D01=C,D02=D,D03=E,D04=J,D05=K,D06=X,D07=Y,D08=Z)
      PARAMETER (E01=C,E02=D,E03=E,E04=J,E05=K,E06=X,E07=Y,E08=Z)
      PARAMETER (J01=C,J02=D,J03=E,J04=J,J05=K,J06=X,J07=Y,J08=Z)
      PARAMETER (K01=C,K02=D,K03=E,K04=J,K05=K,K06=X,K07=Y,K08=Z)
      PARAMETER (X01=C,X02=D,X03=E,X04=J,X05=K,X06=X,X07=Y,X08=Z)
      PARAMETER (Y01=C,Y02=D,Y03=E,Y04=J,Y05=K,Y06=X,Y07=Y,Y08=Z)
      PARAMETER (Z01=C,Z02=D,Z03=E,Z04=J,Z05=K,Z06=X,Z07=Y,Z08=Z)
      PARAMETER (
     1C11=C+C,C12=C+D,C13=C+E,C14=C+J,C15=C+K,C16=C+X,C17=C+Y,C18=C+Z,
     2C21=C-C,C22=C-D,C23=C-E,C24=C-J,C25=C-K,C26=C-X,C27=C-Y,C28=C-Z,
     3C31=C*C,C32=C*D,C33=C*E,C34=C*J,C35=C*K,C36=C*X,C37=C*Y,C38=C*Z,
     4C41=C/C,C42=C/D,C43=C/E,C44=C/J,C45=C/K,C46=C/X,C47=C/Y,C48=C/Z )
      PARAMETER (
     1D11=C+C,D12=C+D,D13=C+E,D14=C+J,D15=C+K,D16=C+X,D17=C+Y,D18=C+Z,
     2D21=C-C,D22=C-D,D23=C-E,D24=C-J,D25=C-K,D26=C-X,D27=C-Y,D28=C-Z,
     3D31=C*C,D32=C*D,D33=C*E,D34=C*J,D35=C*K,D36=C*X,D37=C*Y,D38=C*Z,
     4D41=C/C,D42=C/D,D43=C/E,D44=C/J,D45=C/K,D46=C/X,D47=C/Y,D48=C/Z )
      PARAMETER (
     1E11=C+C,E12=C+D,E13=C+E,E14=C+J,E15=C+K,E16=C+X,E17=C+Y,E18=C+Z,
     2E21=C-C,E22=C-D,E23=C-E,E24=C-J,E25=C-K,E26=C-X,E27=C-Y,E28=C-Z,
     3E31=C*C,E32=C*D,E33=C*E,E34=C*J,E35=C*K,E36=C*X,E37=C*Y,E38=C*Z,
     4E41=C/C,E42=C/D,E43=C/E,E44=C/J,E45=C/K,E46=C/X,E47=C/Y,E48=C/Z )
      PARAMETER (
     1J11=C+C,J12=C+D,J13=C+E,J14=C+J,J15=C+K,J16=C+X,J17=C+Y,J18=C+Z,
     2J21=C-C,J22=C-D,J23=C-E,J24=C-J,J25=C-K,J26=C-X,J27=C-Y,J28=C-Z,
     3J31=C*C,J32=C*D,J33=C*E,J34=C*J,J35=C*K,J36=C*X,J37=C*Y,J38=C*Z,
     4J41=C/C,J42=C/D,J43=C/E,J44=C/J,J45=C/K,J46=C/X,J47=C/Y,J48=C/Z )
      PARAMETER (
     1K11=C+C,K12=C+D,K13=C+E,K14=C+J,K15=C+K,K16=C+X,K17=C+Y,K18=C+Z,
     2K21=C-C,K22=C-D,K23=C-E,K24=C-J,K25=C-K,K26=C-X,K27=C-Y,K28=C-Z,
     3K31=C*C,K32=C*D,K33=C*E,K34=C*J,K35=C*K,K36=C*X,K37=C*Y,K38=C*Z,
     4K41=C/C,K42=C/D,K43=C/E,K44=C/J,K45=C/K,K46=C/X,K47=C/Y,K48=C/Z )
      PARAMETER (
     1X11=C+C,X12=C+D,X13=C+E,X14=C+J,X15=C+K,X16=C+X,X17=C+Y,X18=C+Z,
     2X21=C-C,X22=C-D,X23=C-E,X24=C-J,X25=C-K,X26=C-X,X27=C-Y,X28=C-Z,
     3X31=C*C,X32=C*D,X33=C*E,X34=C*J,X35=C*K,X36=C*X,X37=C*Y,X38=C*Z,
     4X41=C/C,X42=C/D,X43=C/E,X44=C/J,X45=C/K,X46=C/X,X47=C/Y,X48=C/Z )
      PARAMETER (
     1Y11=C+C,Y12=C+D,Y13=C+E,Y14=C+J,Y15=C+K,Y16=C+X,Y17=C+Y,Y18=C+Z,
     2Y21=C-C,Y22=C-D,Y23=C-E,Y24=C-J,Y25=C-K,Y26=C-X,Y27=C-Y,Y28=C-Z,
     3Y31=C*C,Y32=C*D,Y33=C*E,Y34=C*J,Y35=C*K,Y36=C*X,Y37=C*Y,Y38=C*Z,
     4Y41=C/C,Y42=C/D,Y43=C/E,Y44=C/J,Y45=C/K,Y46=C/X,Y47=C/Y,Y48=C/Z )
      PARAMETER (
     1Z11=C+C,Z12=C+D,Z13=C+E,Z14=C+J,Z15=C+K,Z16=C+X,Z17=C+Y,Z18=C+Z,
     2Z21=C-C,Z22=C-D,Z23=C-E,Z24=C-J,Z25=C-K,Z26=C-X,Z27=C-Y,Z28=C-Z,
     3Z31=C*C,Z32=C*D,Z33=C*E,Z34=C*J,Z35=C*K,Z36=C*X,Z37=C*Y,Z38=C*Z,
     4Z41=C/C,Z42=C/D,Z43=C/E,Z44=C/J,Z45=C/K,Z46=C/X,Z47=C/Y,Z48=C/Z )
      COMMON
     1EQ,EQ01,EQ02,EQ03,EQ04,EQ05,EQ06,EQ07,EQ08,
     2   EQ11,EQ12,EQ13,EQ14,EQ15,EQ16,EQ17,EQ18,
     3   EQ21,EQ22,EQ23,EQ24,EQ25,EQ26,EQ27,EQ28,
     4   EQ31,EQ32,EQ33,EQ34,EQ35,EQ36,EQ37,EQ38,
     5   EQ41,EQ42,EQ43,EQ44,EQ45,EQ46,EQ47,EQ48
      COMMON
     1DQ,DQ01,DQ02,DQ03,DQ04,DQ05,DQ06,DQ07,DQ08,
     2   DQ11,DQ12,DQ13,DQ14,DQ15,DQ16,DQ17,DQ18,
     3   DQ21,DQ22,DQ23,DQ24,DQ25,DQ26,DQ27,DQ28,
     4   DQ31,DQ32,DQ33,DQ34,DQ35,DQ36,DQ37,DQ38,
     5   DQ41,DQ42,DQ43,DQ44,DQ45,DQ46,DQ47,DQ48
      COMMON
     1ZQ,ZQ01,ZQ02,ZQ03,ZQ04,ZQ05,ZQ06,ZQ07,ZQ08,
     2   ZQ11,ZQ12,ZQ13,ZQ14,ZQ15,ZQ16,ZQ17,ZQ18,
     3   ZQ21,ZQ22,ZQ23,ZQ24,ZQ25,ZQ26,ZQ27,ZQ28,
     4   ZQ31,ZQ32,ZQ33,ZQ34,ZQ35,ZQ36,ZQ37,ZQ38,
     5   ZQ41,ZQ42,ZQ43,ZQ44,ZQ45,ZQ46,ZQ47,ZQ48
      COMMON
     1CQ,CQ01,CQ02,CQ03,CQ04,CQ05,CQ06,CQ07,CQ08,
     2   CQ11,CQ12,CQ13,CQ14,CQ15,CQ16,CQ17,CQ18,
     3   CQ21,CQ22,CQ23,CQ24,CQ25,CQ26,CQ27,CQ28,
     4   CQ31,CQ32,CQ33,CQ34,CQ35,CQ36,CQ37,CQ38,
     5   CQ41,CQ42,CQ43,CQ44,CQ45,CQ46,CQ47,CQ48
      COMMON
     1YQ,YQ01,YQ02,YQ03,YQ04,YQ05,YQ06,YQ07,YQ08,
     2   YQ11,YQ12,YQ13,YQ14,YQ15,YQ16,YQ17,YQ18,
     3   YQ21,YQ22,YQ23,YQ24,YQ25,YQ26,YQ27,YQ28,
     4   YQ31,YQ32,YQ33,YQ34,YQ35,YQ36,YQ37,YQ38,
     5   YQ41,YQ42,YQ43,YQ44,YQ45,YQ46,YQ47,YQ48
      COMMON
     1XQ,XQ01,XQ02,XQ03,XQ04,XQ05,XQ06,XQ07,XQ08,
     2   XQ11,XQ12,XQ13,XQ14,XQ15,XQ16,XQ17,XQ18,
     3   XQ21,XQ22,XQ23,XQ24,XQ25,XQ26,XQ27,XQ28,
     4   XQ31,XQ32,XQ33,XQ34,XQ35,XQ36,XQ37,XQ38,
     5   XQ41,XQ42,XQ43,XQ44,XQ45,XQ46,XQ47,XQ48
      COMMON
     1KQ,KQ01,KQ02,KQ03,KQ04,KQ05,KQ06,KQ07,KQ08,
     2   KQ11,KQ12,KQ13,KQ14,KQ15,KQ16,KQ17,KQ18,
     3   KQ21,KQ22,KQ23,KQ24,KQ25,KQ26,KQ27,KQ28,
     4   KQ31,KQ32,KQ33,KQ34,KQ35,KQ36,KQ37,KQ38,
     5   KQ41,KQ42,KQ43,KQ44,KQ45,KQ46,KQ47,KQ48
      COMMON
     1JQ,JQ01,JQ02,JQ03,JQ04,JQ05,JQ06,JQ07,JQ08,
     2   JQ11,JQ12,JQ13,JQ14,JQ15,JQ16,JQ17,JQ18,
     3   JQ21,JQ22,JQ23,JQ24,JQ25,JQ26,JQ27,JQ28,
     4   JQ31,JQ32,JQ33,JQ34,JQ35,JQ36,JQ37,JQ38,
     5   JQ41,JQ42,JQ43,JQ44,JQ45,JQ46,JQ47,JQ48
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ01 = CQ
      CQ02 = DQ
      CQ03 = EQ
      CQ04 = JQ
      CQ05 = KQ
      CQ06 = XQ
      CQ07 = YQ
      CQ08 = ZQ
      DQ01 = CQ
      DQ02 = DQ
      DQ03 = EQ
      DQ04 = JQ
      DQ05 = KQ
      DQ06 = XQ
      DQ07 = YQ
      DQ08 = ZQ
      EQ01 = CQ
      EQ02 = DQ
      EQ03 = EQ
      EQ04 = JQ
      EQ05 = KQ
      EQ06 = XQ
      EQ07 = YQ
      EQ08 = ZQ
      JQ01 = CQ
      JQ02 = DQ
      JQ03 = EQ
      JQ04 = JQ
      JQ05 = KQ
      JQ06 = XQ
      JQ07 = YQ
      JQ08 = ZQ
      KQ01 = CQ
      KQ02 = DQ
      KQ03 = EQ
      KQ04 = JQ
      KQ05 = KQ
      KQ06 = XQ
      KQ07 = YQ
      KQ08 = ZQ
      XQ01 = CQ
      XQ02 = DQ
      XQ03 = EQ
      XQ04 = JQ
      XQ05 = KQ
      XQ06 = XQ
      XQ07 = YQ
      XQ08 = ZQ
      YQ01 = CQ
      YQ02 = DQ
      YQ03 = EQ
      YQ04 = JQ
      YQ05 = KQ
      YQ06 = XQ
      YQ07 = YQ
      YQ08 = ZQ
      ZQ01 = CQ
      ZQ02 = DQ
      ZQ03 = EQ
      ZQ04 = JQ
      ZQ05 = KQ
      ZQ06 = XQ
      ZQ07 = YQ
      ZQ08 = ZQ
      CQ11 = CQ+CQ
      CQ12 = CQ+DQ
      CQ13 = CQ+EQ
      CQ14 = CQ+JQ
      CQ15 = CQ+KQ
      CQ16 = CQ+XQ
      CQ17 = CQ+YQ
      CQ18 = CQ+ZQ
      CQ21 = CQ-CQ
      CQ22 = CQ-DQ
      CQ23 = CQ-EQ
      CQ24 = CQ-JQ
      CQ25 = CQ-KQ
      CQ26 = CQ-XQ
      CQ27 = CQ-YQ
      CQ28 = CQ-ZQ
      CQ31 = CQ*CQ
      CQ32 = CQ*DQ
      CQ33 = CQ*EQ
      CQ34 = CQ*JQ
      CQ35 = CQ*KQ
      CQ36 = CQ*XQ
      CQ37 = CQ*YQ
      CQ38 = CQ*ZQ
      CQ41 = CQ/CQ
      CQ42 = CQ/DQ
      CQ43 = CQ/EQ
      CQ44 = CQ/JQ
      CQ45 = CQ/KQ
      CQ46 = CQ/XQ
      CQ47 = CQ/YQ
      CQ48 = CQ/ZQ
      DQ11 = CQ+CQ
      DQ12 = CQ+DQ
      DQ13 = CQ+EQ
      DQ14 = CQ+JQ
      DQ15 = CQ+KQ
      DQ16 = CQ+XQ
      DQ17 = CQ+YQ
      DQ18 = CQ+ZQ
      DQ21 = CQ-CQ
      DQ22 = CQ-DQ
      DQ23 = CQ-EQ
      DQ24 = CQ-JQ
      DQ25 = CQ-KQ
      DQ26 = CQ-XQ
      DQ27 = CQ-YQ
      DQ28 = CQ-ZQ
      DQ31 = CQ*CQ
      DQ32 = CQ*DQ
      DQ33 = CQ*EQ
      DQ34 = CQ*JQ
      DQ35 = CQ*KQ
      DQ36 = CQ*XQ
      DQ37 = CQ*YQ
      DQ38 = CQ*ZQ
      DQ41 = CQ/CQ
      DQ42 = CQ/DQ
      DQ43 = CQ/EQ
      DQ44 = CQ/JQ
      DQ45 = CQ/KQ
      DQ46 = CQ/XQ
      DQ47 = CQ/YQ
      DQ48 = CQ/ZQ
      EQ11 = CQ+CQ
      EQ12 = CQ+DQ
      EQ13 = CQ+EQ
      EQ14 = CQ+JQ
      EQ15 = CQ+KQ
      EQ16 = CQ+XQ
      EQ17 = CQ+YQ
      EQ18 = CQ+ZQ
      EQ21 = CQ-CQ
      EQ22 = CQ-DQ
      EQ23 = CQ-EQ
      EQ24 = CQ-JQ
      EQ25 = CQ-KQ
      EQ26 = CQ-XQ
      EQ27 = CQ-YQ
      EQ28 = CQ-ZQ
      EQ31 = CQ*CQ
      EQ32 = CQ*DQ
      EQ33 = CQ*EQ
      EQ34 = CQ*JQ
      EQ35 = CQ*KQ
      EQ36 = CQ*XQ
      EQ37 = CQ*YQ
      EQ38 = CQ*ZQ
      EQ41 = CQ/CQ
      EQ42 = CQ/DQ
      EQ43 = CQ/EQ
      EQ44 = CQ/JQ
      EQ45 = CQ/KQ
      EQ46 = CQ/XQ
      EQ47 = CQ/YQ
      EQ48 = CQ/ZQ
      JQ11 = CQ+CQ
      JQ12 = CQ+DQ
      JQ13 = CQ+EQ
      JQ14 = CQ+JQ
      JQ15 = CQ+KQ
      JQ16 = CQ+XQ
      JQ17 = CQ+YQ
      JQ18 = CQ+ZQ
      JQ21 = CQ-CQ
      JQ22 = CQ-DQ
      JQ23 = CQ-EQ
      JQ24 = CQ-JQ
      JQ25 = CQ-KQ
      JQ26 = CQ-XQ
      JQ27 = CQ-YQ
      JQ28 = CQ-ZQ
      JQ31 = CQ*CQ
      JQ32 = CQ*DQ
      JQ33 = CQ*EQ
      JQ34 = CQ*JQ
      JQ35 = CQ*KQ
      JQ36 = CQ*XQ
      JQ37 = CQ*YQ
      JQ38 = CQ*ZQ
      JQ41 = CQ/CQ
      JQ42 = CQ/DQ
      JQ43 = CQ/EQ
      JQ44 = CQ/JQ
      JQ45 = CQ/KQ
      JQ46 = CQ/XQ
      JQ47 = CQ/YQ
      JQ48 = CQ/ZQ
      KQ11 = CQ+CQ
      KQ12 = CQ+DQ
      KQ13 = CQ+EQ
      KQ14 = CQ+JQ
      KQ15 = CQ+KQ
      KQ16 = CQ+XQ
      KQ17 = CQ+YQ
      KQ18 = CQ+ZQ
      KQ21 = CQ-CQ
      KQ22 = CQ-DQ
      KQ23 = CQ-EQ
      KQ24 = CQ-JQ
      KQ25 = CQ-KQ
      KQ26 = CQ-XQ
      KQ27 = CQ-YQ
      KQ28 = CQ-ZQ
      KQ31 = CQ*CQ
      KQ32 = CQ*DQ
      KQ33 = CQ*EQ
      KQ34 = CQ*JQ
      KQ35 = CQ*KQ
      KQ36 = CQ*XQ
      KQ37 = CQ*YQ
      KQ38 = CQ*ZQ
      KQ41 = CQ/CQ
      KQ42 = CQ/DQ
      KQ43 = CQ/EQ
      KQ44 = CQ/JQ
      KQ45 = CQ/KQ
      KQ46 = CQ/XQ
      KQ47 = CQ/YQ
      KQ48 = CQ/ZQ
      XQ11 = CQ+CQ
      XQ12 = CQ+DQ
      XQ13 = CQ+EQ
      XQ14 = CQ+JQ
      XQ15 = CQ+KQ
      XQ16 = CQ+XQ
      XQ17 = CQ+YQ
      XQ18 = CQ+ZQ
      XQ21 = CQ-CQ
      XQ22 = CQ-DQ
      XQ23 = CQ-EQ
      XQ24 = CQ-JQ
      XQ25 = CQ-KQ
      XQ26 = CQ-XQ
      XQ27 = CQ-YQ
      XQ28 = CQ-ZQ
      XQ31 = CQ*CQ
      XQ32 = CQ*DQ
      XQ33 = CQ*EQ
      XQ34 = CQ*JQ
      XQ35 = CQ*KQ
      XQ36 = CQ*XQ
      XQ37 = CQ*YQ
      XQ38 = CQ*ZQ
      XQ41 = CQ/CQ
      XQ42 = CQ/DQ
      XQ43 = CQ/EQ
      XQ44 = CQ/JQ
      XQ45 = CQ/KQ
      XQ46 = CQ/XQ
      XQ47 = CQ/YQ
      XQ48 = CQ/ZQ
      YQ11 = CQ+CQ
      YQ12 = CQ+DQ
      YQ13 = CQ+EQ
      YQ14 = CQ+JQ
      YQ15 = CQ+KQ
      YQ16 = CQ+XQ
      YQ17 = CQ+YQ
      YQ18 = CQ+ZQ
      YQ21 = CQ-CQ
      YQ22 = CQ-DQ
      YQ23 = CQ-EQ
      YQ24 = CQ-JQ
      YQ25 = CQ-KQ
      YQ26 = CQ-XQ
      YQ27 = CQ-YQ
      YQ28 = CQ-ZQ
      YQ31 = CQ*CQ
      YQ32 = CQ*DQ
      YQ33 = CQ*EQ
      YQ34 = CQ*JQ
      YQ35 = CQ*KQ
      YQ36 = CQ*XQ
      YQ37 = CQ*YQ
      YQ38 = CQ*ZQ
      YQ41 = CQ/CQ
      YQ42 = CQ/DQ
      YQ43 = CQ/EQ
      YQ44 = CQ/JQ
      YQ45 = CQ/KQ
      YQ46 = CQ/XQ
      YQ47 = CQ/YQ
      YQ48 = CQ/ZQ
      ZQ11 = CQ+CQ
      ZQ12 = CQ+DQ
      ZQ13 = CQ+EQ
      ZQ14 = CQ+JQ
      ZQ15 = CQ+KQ
      ZQ16 = CQ+XQ
      ZQ17 = CQ+YQ
      ZQ18 = CQ+ZQ
      ZQ21 = CQ-CQ
      ZQ22 = CQ-DQ
      ZQ23 = CQ-EQ
      ZQ24 = CQ-JQ
      ZQ25 = CQ-KQ
      ZQ26 = CQ-XQ
      ZQ27 = CQ-YQ
      ZQ28 = CQ-ZQ
      ZQ31 = CQ*CQ
      ZQ32 = CQ*DQ
      ZQ33 = CQ*EQ
      ZQ34 = CQ*JQ
      ZQ35 = CQ*KQ
      ZQ36 = CQ*XQ
      ZQ37 = CQ*YQ
      ZQ38 = CQ*ZQ
      ZQ41 = CQ/CQ
      ZQ42 = CQ/DQ
      ZQ43 = CQ/EQ
      ZQ44 = CQ/JQ
      ZQ45 = CQ/KQ
      ZQ46 = CQ/XQ
      ZQ47 = CQ/YQ
      ZQ48 = CQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C01 .NE.  CQ01) PRINT *,'FAIL'
      IF (D01 .NE.  DQ01) PRINT *,'FAIL'
      IF (E01 .NE.  EQ01) PRINT *,'FAIL'
      IF (J01 .NE.  JQ01) PRINT *,'FAIL'
      IF (K01 .NE.  KQ01) PRINT *,'FAIL'
      IF (X01 .NE.  XQ01) PRINT *,'FAIL'
      IF (Y01 .NE.  YQ01) PRINT *,'FAIL'
      IF (Z01 .NE.  ZQ01) PRINT *,'FAIL'
      IF (C02 .NE.  CQ02) PRINT *,'FAIL'
      IF (D02 .NE.  DQ02) PRINT *,'FAIL'
      IF (E02 .NE.  EQ02) PRINT *,'FAIL'
      IF (J02 .NE.  JQ02) PRINT *,'FAIL'
      IF (K02 .NE.  KQ02) PRINT *,'FAIL'
      IF (X02 .NE.  XQ02) PRINT *,'FAIL'
      IF (Y02 .NE.  YQ02) PRINT *,'FAIL'
      IF (Z02 .NE.  ZQ02) PRINT *,'FAIL'
      IF (C03 .NE.  CQ03) PRINT *,'FAIL'
      IF (D03 .NE.  DQ03) PRINT *,'FAIL'
      IF (E03 .NE.  EQ03) PRINT *,'FAIL'
      IF (J03 .NE.  JQ03) PRINT *,'FAIL'
      IF (K03 .NE.  KQ03) PRINT *,'FAIL'
      IF (X03 .NE.  XQ03) PRINT *,'FAIL'
      IF (Y03 .NE.  YQ03) PRINT *,'FAIL'
      IF (Z03 .NE.  ZQ03) PRINT *,'FAIL'
      IF (C04 .NE.  CQ04) PRINT *,'FAIL'
      IF (D04 .NE.  DQ04) PRINT *,'FAIL'
      IF (E04 .NE.  EQ04) PRINT *,'FAIL'
      IF (J04 .NE.  JQ04) PRINT *,'FAIL'
      IF (K04 .NE.  KQ04) PRINT *,'FAIL'
      IF (X04 .NE.  XQ04) PRINT *,'FAIL'
      IF (Y04 .NE.  YQ04) PRINT *,'FAIL'
      IF (Z04 .NE.  ZQ04) PRINT *,'FAIL'
      IF (C05 .NE.  CQ05) PRINT *,'FAIL'
      IF (D05 .NE.  DQ05) PRINT *,'FAIL'
      IF (E05 .NE.  EQ05) PRINT *,'FAIL'
      IF (J05 .NE.  JQ05) PRINT *,'FAIL'
      IF (K05 .NE.  KQ05) PRINT *,'FAIL'
      IF (X05 .NE.  XQ05) PRINT *,'FAIL'
      IF (Y05 .NE.  YQ05) PRINT *,'FAIL'
      IF (Z05 .NE.  ZQ05) PRINT *,'FAIL'
      IF (C06 .NE.  CQ06) PRINT *,'FAIL'
      IF (D06 .NE.  DQ06) PRINT *,'FAIL'
      IF (E06 .NE.  EQ06) PRINT *,'FAIL'
      IF (J06 .NE.  JQ06) PRINT *,'FAIL'
      IF (K06 .NE.  KQ06) PRINT *,'FAIL'
      IF (X06 .NE.  XQ06) PRINT *,'FAIL'
      IF (Y06 .NE.  YQ06) PRINT *,'FAIL'
      IF (Z06 .NE.  ZQ06) PRINT *,'FAIL'
      IF (C07 .NE.  CQ07) PRINT *,'FAIL'
      IF (D07 .NE.  DQ07) PRINT *,'FAIL'
      IF (E07 .NE.  EQ07) PRINT *,'FAIL'
      IF (J07 .NE.  JQ07) PRINT *,'FAIL'
      IF (K07 .NE.  KQ07) PRINT *,'FAIL'
      IF (X07 .NE.  XQ07) PRINT *,'FAIL'
      IF (Y07 .NE.  YQ07) PRINT *,'FAIL'
      IF (Z07 .NE.  ZQ07) PRINT *,'FAIL'
      IF (C08 .NE.  CQ08) PRINT *,'FAIL'
      IF (D08 .NE.  DQ08) PRINT *,'FAIL'
      IF (E08 .NE.  EQ08) PRINT *,'FAIL'
      IF (J08 .NE.  JQ08) PRINT *,'FAIL'
      IF (K08 .NE.  KQ08) PRINT *,'FAIL'
      IF (X08 .NE.  XQ08) PRINT *,'FAIL'
      IF (Y08 .NE.  YQ08) PRINT *,'FAIL'
      IF (Z08 .NE.  ZQ08) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND C +-*/ '
      END
      SUBROUTINE CHECK         D
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=D+C,C12=D+D,C13=D+E,C14=D+J,C15=D+K,C16=D+X,C17=D+Y,C18=D+Z,
     2C21=D-C,C22=D-D,C23=D-E,C24=D-J,C25=D-K,C26=D-X,C27=D-Y,C28=D-Z,
     3C31=D*C,C32=D*D,C33=D*E,C34=D*J,C35=D*K,C36=D*X,C37=D*Y,C38=D*Z,
     4C41=D/C,C42=D/D,C43=D/E,C44=D/J,C45=D/K,C46=D/X,C47=D/Y,C48=D/Z )
      PARAMETER (
     1D11=D+C,D12=D+D,D13=D+E,D14=D+J,D15=D+K,D16=D+X,D17=D+Y,D18=D+Z,
     2D21=D-C,D22=D-D,D23=D-E,D24=D-J,D25=D-K,D26=D-X,D27=D-Y,D28=D-Z,
     3D31=D*C,D32=D*D,D33=D*E,D34=D*J,D35=D*K,D36=D*X,D37=D*Y,D38=D*Z,
     4D41=D/C,D42=D/D,D43=D/E,D44=D/J,D45=D/K,D46=D/X,D47=D/Y,D48=D/Z )
      PARAMETER (
     1E11=D+C,E12=D+D,E13=D+E,E14=D+J,E15=D+K,E16=D+X,E17=D+Y,E18=D+Z,
     2E21=D-C,E22=D-D,E23=D-E,E24=D-J,E25=D-K,E26=D-X,E27=D-Y,E28=D-Z,
     3E31=D*C,E32=D*D,E33=D*E,E34=D*J,E35=D*K,E36=D*X,E37=D*Y,E38=D*Z,
     4E41=D/C,E42=D/D,E43=D/E,E44=D/J,E45=D/K,E46=D/X,E47=D/Y,E48=D/Z )
      PARAMETER (
     1J11=D+C,J12=D+D,J13=D+E,J14=D+J,J15=D+K,J16=D+X,J17=D+Y,J18=D+Z,
     2J21=D-C,J22=D-D,J23=D-E,J24=D-J,J25=D-K,J26=D-X,J27=D-Y,J28=D-Z,
     3J31=D*C,J32=D*D,J33=D*E,J34=D*J,J35=D*K,J36=D*X,J37=D*Y,J38=D*Z,
     4J41=D/C,J42=D/D,J43=D/E,J44=D/J,J45=D/K,J46=D/X,J47=D/Y,J48=D/Z )
      PARAMETER (
     1K11=D+C,K12=D+D,K13=D+E,K14=D+J,K15=D+K,K16=D+X,K17=D+Y,K18=D+Z,
     2K21=D-C,K22=D-D,K23=D-E,K24=D-J,K25=D-K,K26=D-X,K27=D-Y,K28=D-Z,
     3K31=D*C,K32=D*D,K33=D*E,K34=D*J,K35=D*K,K36=D*X,K37=D*Y,K38=D*Z,
     4K41=D/C,K42=D/D,K43=D/E,K44=D/J,K45=D/K,K46=D/X,K47=D/Y,K48=D/Z )
      PARAMETER (
     1X11=D+C,X12=D+D,X13=D+E,X14=D+J,X15=D+K,X16=D+X,X17=D+Y,X18=D+Z,
     2X21=D-C,X22=D-D,X23=D-E,X24=D-J,X25=D-K,X26=D-X,X27=D-Y,X28=D-Z,
     3X31=D*C,X32=D*D,X33=D*E,X34=D*J,X35=D*K,X36=D*X,X37=D*Y,X38=D*Z,
     4X41=D/C,X42=D/D,X43=D/E,X44=D/J,X45=D/K,X46=D/X,X47=D/Y,X48=D/Z )
      PARAMETER (
     1Y11=D+C,Y12=D+D,Y13=D+E,Y14=D+J,Y15=D+K,Y16=D+X,Y17=D+Y,Y18=D+Z,
     2Y21=D-C,Y22=D-D,Y23=D-E,Y24=D-J,Y25=D-K,Y26=D-X,Y27=D-Y,Y28=D-Z,
     3Y31=D*C,Y32=D*D,Y33=D*E,Y34=D*J,Y35=D*K,Y36=D*X,Y37=D*Y,Y38=D*Z,
     4Y41=D/C,Y42=D/D,Y43=D/E,Y44=D/J,Y45=D/K,Y46=D/X,Y47=D/Y,Y48=D/Z )
      PARAMETER (
     1Z11=D+C,Z12=D+D,Z13=D+E,Z14=D+J,Z15=D+K,Z16=D+X,Z17=D+Y,Z18=D+Z,
     2Z21=D-C,Z22=D-D,Z23=D-E,Z24=D-J,Z25=D-K,Z26=D-X,Z27=D-Y,Z28=D-Z,
     3Z31=D*C,Z32=D*D,Z33=D*E,Z34=D*J,Z35=D*K,Z36=D*X,Z37=D*Y,Z38=D*Z,
     4Z41=D/C,Z42=D/D,Z43=D/E,Z44=D/J,Z45=D/K,Z46=D/X,Z47=D/Y,Z48=D/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = DQ+CQ
      CQ12 = DQ+DQ
      CQ13 = DQ+EQ
      CQ14 = DQ+JQ
      CQ15 = DQ+KQ
      CQ16 = DQ+XQ
      CQ17 = DQ+YQ
      CQ18 = DQ+ZQ
      CQ21 = DQ-CQ
      CQ22 = DQ-DQ
      CQ23 = DQ-EQ
      CQ24 = DQ-JQ
      CQ25 = DQ-KQ
      CQ26 = DQ-XQ
      CQ27 = DQ-YQ
      CQ28 = DQ-ZQ
      CQ31 = DQ*CQ
      CQ32 = DQ*DQ
      CQ33 = DQ*EQ
      CQ34 = DQ*JQ
      CQ35 = DQ*KQ
      CQ36 = DQ*XQ
      CQ37 = DQ*YQ
      CQ38 = DQ*ZQ
      CQ41 = DQ/CQ
      CQ42 = DQ/DQ
      CQ43 = DQ/EQ
      CQ44 = DQ/JQ
      CQ45 = DQ/KQ
      CQ46 = DQ/XQ
      CQ47 = DQ/YQ
      CQ48 = DQ/ZQ
      DQ11 = DQ+CQ
      DQ12 = DQ+DQ
      DQ13 = DQ+EQ
      DQ14 = DQ+JQ
      DQ15 = DQ+KQ
      DQ16 = DQ+XQ
      DQ17 = DQ+YQ
      DQ18 = DQ+ZQ
      DQ21 = DQ-CQ
      DQ22 = DQ-DQ
      DQ23 = DQ-EQ
      DQ24 = DQ-JQ
      DQ25 = DQ-KQ
      DQ26 = DQ-XQ
      DQ27 = DQ-YQ
      DQ28 = DQ-ZQ
      DQ31 = DQ*CQ
      DQ32 = DQ*DQ
      DQ33 = DQ*EQ
      DQ34 = DQ*JQ
      DQ35 = DQ*KQ
      DQ36 = DQ*XQ
      DQ37 = DQ*YQ
      DQ38 = DQ*ZQ
      DQ41 = DQ/CQ
      DQ42 = DQ/DQ
      DQ43 = DQ/EQ
      DQ44 = DQ/JQ
      DQ45 = DQ/KQ
      DQ46 = DQ/XQ
      DQ47 = DQ/YQ
      DQ48 = DQ/ZQ
      EQ11 = DQ+CQ
      EQ12 = DQ+DQ
      EQ13 = DQ+EQ
      EQ14 = DQ+JQ
      EQ15 = DQ+KQ
      EQ16 = DQ+XQ
      EQ17 = DQ+YQ
      EQ18 = DQ+ZQ
      EQ21 = DQ-CQ
      EQ22 = DQ-DQ
      EQ23 = DQ-EQ
      EQ24 = DQ-JQ
      EQ25 = DQ-KQ
      EQ26 = DQ-XQ
      EQ27 = DQ-YQ
      EQ28 = DQ-ZQ
      EQ31 = DQ*CQ
      EQ32 = DQ*DQ
      EQ33 = DQ*EQ
      EQ34 = DQ*JQ
      EQ35 = DQ*KQ
      EQ36 = DQ*XQ
      EQ37 = DQ*YQ
      EQ38 = DQ*ZQ
      EQ41 = DQ/CQ
      EQ42 = DQ/DQ
      EQ43 = DQ/EQ
      EQ44 = DQ/JQ
      EQ45 = DQ/KQ
      EQ46 = DQ/XQ
      EQ47 = DQ/YQ
      EQ48 = DQ/ZQ
      JQ11 = DQ+CQ
      JQ12 = DQ+DQ
      JQ13 = DQ+EQ
      JQ14 = DQ+JQ
      JQ15 = DQ+KQ
      JQ16 = DQ+XQ
      JQ17 = DQ+YQ
      JQ18 = DQ+ZQ
      JQ21 = DQ-CQ
      JQ22 = DQ-DQ
      JQ23 = DQ-EQ
      JQ24 = DQ-JQ
      JQ25 = DQ-KQ
      JQ26 = DQ-XQ
      JQ27 = DQ-YQ
      JQ28 = DQ-ZQ
      JQ31 = DQ*CQ
      JQ32 = DQ*DQ
      JQ33 = DQ*EQ
      JQ34 = DQ*JQ
      JQ35 = DQ*KQ
      JQ36 = DQ*XQ
      JQ37 = DQ*YQ
      JQ38 = DQ*ZQ
      JQ41 = DQ/CQ
      JQ42 = DQ/DQ
      JQ43 = DQ/EQ
      JQ44 = DQ/JQ
      JQ45 = DQ/KQ
      JQ46 = DQ/XQ
      JQ47 = DQ/YQ
      JQ48 = DQ/ZQ
      KQ11 = DQ+CQ
      KQ12 = DQ+DQ
      KQ13 = DQ+EQ
      KQ14 = DQ+JQ
      KQ15 = DQ+KQ
      KQ16 = DQ+XQ
      KQ17 = DQ+YQ
      KQ18 = DQ+ZQ
      KQ21 = DQ-CQ
      KQ22 = DQ-DQ
      KQ23 = DQ-EQ
      KQ24 = DQ-JQ
      KQ25 = DQ-KQ
      KQ26 = DQ-XQ
      KQ27 = DQ-YQ
      KQ28 = DQ-ZQ
      KQ31 = DQ*CQ
      KQ32 = DQ*DQ
      KQ33 = DQ*EQ
      KQ34 = DQ*JQ
      KQ35 = DQ*KQ
      KQ36 = DQ*XQ
      KQ37 = DQ*YQ
      KQ38 = DQ*ZQ
      KQ41 = DQ/CQ
      KQ42 = DQ/DQ
      KQ43 = DQ/EQ
      KQ44 = DQ/JQ
      KQ45 = DQ/KQ
      KQ46 = DQ/XQ
      KQ47 = DQ/YQ
      KQ48 = DQ/ZQ
      XQ11 = DQ+CQ
      XQ12 = DQ+DQ
      XQ13 = DQ+EQ
      XQ14 = DQ+JQ
      XQ15 = DQ+KQ
      XQ16 = DQ+XQ
      XQ17 = DQ+YQ
      XQ18 = DQ+ZQ
      XQ21 = DQ-CQ
      XQ22 = DQ-DQ
      XQ23 = DQ-EQ
      XQ24 = DQ-JQ
      XQ25 = DQ-KQ
      XQ26 = DQ-XQ
      XQ27 = DQ-YQ
      XQ28 = DQ-ZQ
      XQ31 = DQ*CQ
      XQ32 = DQ*DQ
      XQ33 = DQ*EQ
      XQ34 = DQ*JQ
      XQ35 = DQ*KQ
      XQ36 = DQ*XQ
      XQ37 = DQ*YQ
      XQ38 = DQ*ZQ
      XQ41 = DQ/CQ
      XQ42 = DQ/DQ
      XQ43 = DQ/EQ
      XQ44 = DQ/JQ
      XQ45 = DQ/KQ
      XQ46 = DQ/XQ
      XQ47 = DQ/YQ
      XQ48 = DQ/ZQ
      YQ11 = DQ+CQ
      YQ12 = DQ+DQ
      YQ13 = DQ+EQ
      YQ14 = DQ+JQ
      YQ15 = DQ+KQ
      YQ16 = DQ+XQ
      YQ17 = DQ+YQ
      YQ18 = DQ+ZQ
      YQ21 = DQ-CQ
      YQ22 = DQ-DQ
      YQ23 = DQ-EQ
      YQ24 = DQ-JQ
      YQ25 = DQ-KQ
      YQ26 = DQ-XQ
      YQ27 = DQ-YQ
      YQ28 = DQ-ZQ
      YQ31 = DQ*CQ
      YQ32 = DQ*DQ
      YQ33 = DQ*EQ
      YQ34 = DQ*JQ
      YQ35 = DQ*KQ
      YQ36 = DQ*XQ
      YQ37 = DQ*YQ
      YQ38 = DQ*ZQ
      YQ41 = DQ/CQ
      YQ42 = DQ/DQ
      YQ43 = DQ/EQ
      YQ44 = DQ/JQ
      YQ45 = DQ/KQ
      YQ46 = DQ/XQ
      YQ47 = DQ/YQ
      YQ48 = DQ/ZQ
      ZQ11 = DQ+CQ
      ZQ12 = DQ+DQ
      ZQ13 = DQ+EQ
      ZQ14 = DQ+JQ
      ZQ15 = DQ+KQ
      ZQ16 = DQ+XQ
      ZQ17 = DQ+YQ
      ZQ18 = DQ+ZQ
      ZQ21 = DQ-CQ
      ZQ22 = DQ-DQ
      ZQ23 = DQ-EQ
      ZQ24 = DQ-JQ
      ZQ25 = DQ-KQ
      ZQ26 = DQ-XQ
      ZQ27 = DQ-YQ
      ZQ28 = DQ-ZQ
      ZQ31 = DQ*CQ
      ZQ32 = DQ*DQ
      ZQ33 = DQ*EQ
      ZQ34 = DQ*JQ
      ZQ35 = DQ*KQ
      ZQ36 = DQ*XQ
      ZQ37 = DQ*YQ
      ZQ38 = DQ*ZQ
      ZQ41 = DQ/CQ
      ZQ42 = DQ/DQ
      ZQ43 = DQ/EQ
      ZQ44 = DQ/JQ
      ZQ45 = DQ/KQ
      ZQ46 = DQ/XQ
      ZQ47 = DQ/YQ
      ZQ48 = DQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND D +-*/ '
      END
      SUBROUTINE CHECK         E
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=E+C,C12=E+D,C13=E+E,C14=E+J,C15=E+K,C16=E+X,C17=E+Y,C18=E+Z,
     2C21=E-C,C22=E-D,C23=E-E,C24=E-J,C25=E-K,C26=E-X,C27=E-Y,C28=E-Z,
     3C31=E*C,C32=E*D,C33=E*E,C34=E*J,C35=E*K,C36=E*X,C37=E*Y,C38=E*Z,
     4C41=E/C,C42=E/D,C43=E/E,C44=E/J,C45=E/K,C46=E/X,C47=E/Y,C48=E/Z )
      PARAMETER (
     1D11=E+C,D12=E+D,D13=E+E,D14=E+J,D15=E+K,D16=E+X,D17=E+Y,D18=E+Z,
     2D21=E-C,D22=E-D,D23=E-E,D24=E-J,D25=E-K,D26=E-X,D27=E-Y,D28=E-Z,
     3D31=E*C,D32=E*D,D33=E*E,D34=E*J,D35=E*K,D36=E*X,D37=E*Y,D38=E*Z,
     4D41=E/C,D42=E/D,D43=E/E,D44=E/J,D45=E/K,D46=E/X,D47=E/Y,D48=E/Z )
      PARAMETER (
     1E11=E+C,E12=E+D,E13=E+E,E14=E+J,E15=E+K,E16=E+X,E17=E+Y,E18=E+Z,
     2E21=E-C,E22=E-D,E23=E-E,E24=E-J,E25=E-K,E26=E-X,E27=E-Y,E28=E-Z,
     3E31=E*C,E32=E*D,E33=E*E,E34=E*J,E35=E*K,E36=E*X,E37=E*Y,E38=E*Z,
     4E41=E/C,E42=E/D,E43=E/E,E44=E/J,E45=E/K,E46=E/X,E47=E/Y,E48=E/Z )
      PARAMETER (
     1J11=E+C,J12=E+D,J13=E+E,J14=E+J,J15=E+K,J16=E+X,J17=E+Y,J18=E+Z,
     2J21=E-C,J22=E-D,J23=E-E,J24=E-J,J25=E-K,J26=E-X,J27=E-Y,J28=E-Z,
     3J31=E*C,J32=E*D,J33=E*E,J34=E*J,J35=E*K,J36=E*X,J37=E*Y,J38=E*Z,
     4J41=E/C,J42=E/D,J43=E/E,J44=E/J,J45=E/K,J46=E/X,J47=E/Y,J48=E/Z )
      PARAMETER (
     1K11=E+C,K12=E+D,K13=E+E,K14=E+J,K15=E+K,K16=E+X,K17=E+Y,K18=E+Z,
     2K21=E-C,K22=E-D,K23=E-E,K24=E-J,K25=E-K,K26=E-X,K27=E-Y,K28=E-Z,
     3K31=E*C,K32=E*D,K33=E*E,K34=E*J,K35=E*K,K36=E*X,K37=E*Y,K38=E*Z,
     4K41=E/C,K42=E/D,K43=E/E,K44=E/J,K45=E/K,K46=E/X,K47=E/Y,K48=E/Z )
      PARAMETER (
     1X11=E+C,X12=E+D,X13=E+E,X14=E+J,X15=E+K,X16=E+X,X17=E+Y,X18=E+Z,
     2X21=E-C,X22=E-D,X23=E-E,X24=E-J,X25=E-K,X26=E-X,X27=E-Y,X28=E-Z,
     3X31=E*C,X32=E*D,X33=E*E,X34=E*J,X35=E*K,X36=E*X,X37=E*Y,X38=E*Z,
     4X41=E/C,X42=E/D,X43=E/E,X44=E/J,X45=E/K,X46=E/X,X47=E/Y,X48=E/Z )
      PARAMETER (
     1Y11=E+C,Y12=E+D,Y13=E+E,Y14=E+J,Y15=E+K,Y16=E+X,Y17=E+Y,Y18=E+Z,
     2Y21=E-C,Y22=E-D,Y23=E-E,Y24=E-J,Y25=E-K,Y26=E-X,Y27=E-Y,Y28=E-Z,
     3Y31=E*C,Y32=E*D,Y33=E*E,Y34=E*J,Y35=E*K,Y36=E*X,Y37=E*Y,Y38=E*Z,
     4Y41=E/C,Y42=E/D,Y43=E/E,Y44=E/J,Y45=E/K,Y46=E/X,Y47=E/Y,Y48=E/Z )
      PARAMETER (
     1Z11=E+C,Z12=E+D,Z13=E+E,Z14=E+J,Z15=E+K,Z16=E+X,Z17=E+Y,Z18=E+Z,
     2Z21=E-C,Z22=E-D,Z23=E-E,Z24=E-J,Z25=E-K,Z26=E-X,Z27=E-Y,Z28=E-Z,
     3Z31=E*C,Z32=E*D,Z33=E*E,Z34=E*J,Z35=E*K,Z36=E*X,Z37=E*Y,Z38=E*Z,
     4Z41=E/C,Z42=E/D,Z43=E/E,Z44=E/J,Z45=E/K,Z46=E/X,Z47=E/Y,Z48=E/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = EQ+CQ
      CQ12 = EQ+DQ
      CQ13 = EQ+EQ
      CQ14 = EQ+JQ
      CQ15 = EQ+KQ
      CQ16 = EQ+XQ
      CQ17 = EQ+YQ
      CQ18 = EQ+ZQ
      CQ21 = EQ-CQ
      CQ22 = EQ-DQ
      CQ23 = EQ-EQ
      CQ24 = EQ-JQ
      CQ25 = EQ-KQ
      CQ26 = EQ-XQ
      CQ27 = EQ-YQ
      CQ28 = EQ-ZQ
      CQ31 = EQ*CQ
      CQ32 = EQ*DQ
      CQ33 = EQ*EQ
      CQ34 = EQ*JQ
      CQ35 = EQ*KQ
      CQ36 = EQ*XQ
      CQ37 = EQ*YQ
      CQ38 = EQ*ZQ
      CQ41 = EQ/CQ
      CQ42 = EQ/DQ
      CQ43 = EQ/EQ
      CQ44 = EQ/JQ
      CQ45 = EQ/KQ
      CQ46 = EQ/XQ
      CQ47 = EQ/YQ
      CQ48 = EQ/ZQ
      DQ11 = EQ+CQ
      DQ12 = EQ+DQ
      DQ13 = EQ+EQ
      DQ14 = EQ+JQ
      DQ15 = EQ+KQ
      DQ16 = EQ+XQ
      DQ17 = EQ+YQ
      DQ18 = EQ+ZQ
      DQ21 = EQ-CQ
      DQ22 = EQ-DQ
      DQ23 = EQ-EQ
      DQ24 = EQ-JQ
      DQ25 = EQ-KQ
      DQ26 = EQ-XQ
      DQ27 = EQ-YQ
      DQ28 = EQ-ZQ
      DQ31 = EQ*CQ
      DQ32 = EQ*DQ
      DQ33 = EQ*EQ
      DQ34 = EQ*JQ
      DQ35 = EQ*KQ
      DQ36 = EQ*XQ
      DQ37 = EQ*YQ
      DQ38 = EQ*ZQ
      DQ41 = EQ/CQ
      DQ42 = EQ/DQ
      DQ43 = EQ/EQ
      DQ44 = EQ/JQ
      DQ45 = EQ/KQ
      DQ46 = EQ/XQ
      DQ47 = EQ/YQ
      DQ48 = EQ/ZQ
      EQ11 = EQ+CQ
      EQ12 = EQ+DQ
      EQ13 = EQ+EQ
      EQ14 = EQ+JQ
      EQ15 = EQ+KQ
      EQ16 = EQ+XQ
      EQ17 = EQ+YQ
      EQ18 = EQ+ZQ
      EQ21 = EQ-CQ
      EQ22 = EQ-DQ
      EQ23 = EQ-EQ
      EQ24 = EQ-JQ
      EQ25 = EQ-KQ
      EQ26 = EQ-XQ
      EQ27 = EQ-YQ
      EQ28 = EQ-ZQ
      EQ31 = EQ*CQ
      EQ32 = EQ*DQ
      EQ33 = EQ*EQ
      EQ34 = EQ*JQ
      EQ35 = EQ*KQ
      EQ36 = EQ*XQ
      EQ37 = EQ*YQ
      EQ38 = EQ*ZQ
      EQ41 = EQ/CQ
      EQ42 = EQ/DQ
      EQ43 = EQ/EQ
      EQ44 = EQ/JQ
      EQ45 = EQ/KQ
      EQ46 = EQ/XQ
      EQ47 = EQ/YQ
      EQ48 = EQ/ZQ
      JQ11 = EQ+CQ
      JQ12 = EQ+DQ
      JQ13 = EQ+EQ
      JQ14 = EQ+JQ
      JQ15 = EQ+KQ
      JQ16 = EQ+XQ
      JQ17 = EQ+YQ
      JQ18 = EQ+ZQ
      JQ21 = EQ-CQ
      JQ22 = EQ-DQ
      JQ23 = EQ-EQ
      JQ24 = EQ-JQ
      JQ25 = EQ-KQ
      JQ26 = EQ-XQ
      JQ27 = EQ-YQ
      JQ28 = EQ-ZQ
      JQ31 = EQ*CQ
      JQ32 = EQ*DQ
      JQ33 = EQ*EQ
      JQ34 = EQ*JQ
      JQ35 = EQ*KQ
      JQ36 = EQ*XQ
      JQ37 = EQ*YQ
      JQ38 = EQ*ZQ
      JQ41 = EQ/CQ
      JQ42 = EQ/DQ
      JQ43 = EQ/EQ
      JQ44 = EQ/JQ
      JQ45 = EQ/KQ
      JQ46 = EQ/XQ
      JQ47 = EQ/YQ
      JQ48 = EQ/ZQ
      KQ11 = EQ+CQ
      KQ12 = EQ+DQ
      KQ13 = EQ+EQ
      KQ14 = EQ+JQ
      KQ15 = EQ+KQ
      KQ16 = EQ+XQ
      KQ17 = EQ+YQ
      KQ18 = EQ+ZQ
      KQ21 = EQ-CQ
      KQ22 = EQ-DQ
      KQ23 = EQ-EQ
      KQ24 = EQ-JQ
      KQ25 = EQ-KQ
      KQ26 = EQ-XQ
      KQ27 = EQ-YQ
      KQ28 = EQ-ZQ
      KQ31 = EQ*CQ
      KQ32 = EQ*DQ
      KQ33 = EQ*EQ
      KQ34 = EQ*JQ
      KQ35 = EQ*KQ
      KQ36 = EQ*XQ
      KQ37 = EQ*YQ
      KQ38 = EQ*ZQ
      KQ41 = EQ/CQ
      KQ42 = EQ/DQ
      KQ43 = EQ/EQ
      KQ44 = EQ/JQ
      KQ45 = EQ/KQ
      KQ46 = EQ/XQ
      KQ47 = EQ/YQ
      KQ48 = EQ/ZQ
      XQ11 = EQ+CQ
      XQ12 = EQ+DQ
      XQ13 = EQ+EQ
      XQ14 = EQ+JQ
      XQ15 = EQ+KQ
      XQ16 = EQ+XQ
      XQ17 = EQ+YQ
      XQ18 = EQ+ZQ
      XQ21 = EQ-CQ
      XQ22 = EQ-DQ
      XQ23 = EQ-EQ
      XQ24 = EQ-JQ
      XQ25 = EQ-KQ
      XQ26 = EQ-XQ
      XQ27 = EQ-YQ
      XQ28 = EQ-ZQ
      XQ31 = EQ*CQ
      XQ32 = EQ*DQ
      XQ33 = EQ*EQ
      XQ34 = EQ*JQ
      XQ35 = EQ*KQ
      XQ36 = EQ*XQ
      XQ37 = EQ*YQ
      XQ38 = EQ*ZQ
      XQ41 = EQ/CQ
      XQ42 = EQ/DQ
      XQ43 = EQ/EQ
      XQ44 = EQ/JQ
      XQ45 = EQ/KQ
      XQ46 = EQ/XQ
      XQ47 = EQ/YQ
      XQ48 = EQ/ZQ
      YQ11 = EQ+CQ
      YQ12 = EQ+DQ
      YQ13 = EQ+EQ
      YQ14 = EQ+JQ
      YQ15 = EQ+KQ
      YQ16 = EQ+XQ
      YQ17 = EQ+YQ
      YQ18 = EQ+ZQ
      YQ21 = EQ-CQ
      YQ22 = EQ-DQ
      YQ23 = EQ-EQ
      YQ24 = EQ-JQ
      YQ25 = EQ-KQ
      YQ26 = EQ-XQ
      YQ27 = EQ-YQ
      YQ28 = EQ-ZQ
      YQ31 = EQ*CQ
      YQ32 = EQ*DQ
      YQ33 = EQ*EQ
      YQ34 = EQ*JQ
      YQ35 = EQ*KQ
      YQ36 = EQ*XQ
      YQ37 = EQ*YQ
      YQ38 = EQ*ZQ
      YQ41 = EQ/CQ
      YQ42 = EQ/DQ
      YQ43 = EQ/EQ
      YQ44 = EQ/JQ
      YQ45 = EQ/KQ
      YQ46 = EQ/XQ
      YQ47 = EQ/YQ
      YQ48 = EQ/ZQ
      ZQ11 = EQ+CQ
      ZQ12 = EQ+DQ
      ZQ13 = EQ+EQ
      ZQ14 = EQ+JQ
      ZQ15 = EQ+KQ
      ZQ16 = EQ+XQ
      ZQ17 = EQ+YQ
      ZQ18 = EQ+ZQ
      ZQ21 = EQ-CQ
      ZQ22 = EQ-DQ
      ZQ23 = EQ-EQ
      ZQ24 = EQ-JQ
      ZQ25 = EQ-KQ
      ZQ26 = EQ-XQ
      ZQ27 = EQ-YQ
      ZQ28 = EQ-ZQ
      ZQ31 = EQ*CQ
      ZQ32 = EQ*DQ
      ZQ33 = EQ*EQ
      ZQ34 = EQ*JQ
      ZQ35 = EQ*KQ
      ZQ36 = EQ*XQ
      ZQ37 = EQ*YQ
      ZQ38 = EQ*ZQ
      ZQ41 = EQ/CQ
      ZQ42 = EQ/DQ
      ZQ43 = EQ/EQ
      ZQ44 = EQ/JQ
      ZQ45 = EQ/KQ
      ZQ46 = EQ/XQ
      ZQ47 = EQ/YQ
      ZQ48 = EQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND E +-*/ '
      END
      SUBROUTINE CHECK         J
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=J+C,C12=J+D,C13=J+E,C14=J+J,C15=J+K,C16=J+X,C17=J+Y,C18=J+Z,
     2C21=J-C,C22=J-D,C23=J-E,C24=J-J,C25=J-K,C26=J-X,C27=J-Y,C28=J-Z,
     3C31=J*C,C32=J*D,C33=J*E,C34=J*J,C35=J*K,C36=J*X,C37=J*Y,C38=J*Z,
     4C41=J/C,C42=J/D,C43=J/E,C44=J/J,C45=J/K,C46=J/X,C47=J/Y,C48=J/Z )
      PARAMETER (
     1D11=J+C,D12=J+D,D13=J+E,D14=J+J,D15=J+K,D16=J+X,D17=J+Y,D18=J+Z,
     2D21=J-C,D22=J-D,D23=J-E,D24=J-J,D25=J-K,D26=J-X,D27=J-Y,D28=J-Z,
     3D31=J*C,D32=J*D,D33=J*E,D34=J*J,D35=J*K,D36=J*X,D37=J*Y,D38=J*Z,
     4D41=J/C,D42=J/D,D43=J/E,D44=J/J,D45=J/K,D46=J/X,D47=J/Y,D48=J/Z )
      PARAMETER (
     1E11=J+C,E12=J+D,E13=J+E,E14=J+J,E15=J+K,E16=J+X,E17=J+Y,E18=J+Z,
     2E21=J-C,E22=J-D,E23=J-E,E24=J-J,E25=J-K,E26=J-X,E27=J-Y,E28=J-Z,
     3E31=J*C,E32=J*D,E33=J*E,E34=J*J,E35=J*K,E36=J*X,E37=J*Y,E38=J*Z,
     4E41=J/C,E42=J/D,E43=J/E,E44=J/J,E45=J/K,E46=J/X,E47=J/Y,E48=J/Z )
      PARAMETER (
     1J11=J+C,J12=J+D,J13=J+E,J14=J+J,J15=J+K,J16=J+X,J17=J+Y,J18=J+Z,
     2J21=J-C,J22=J-D,J23=J-E,J24=J-J,J25=J-K,J26=J-X,J27=J-Y,J28=J-Z,
     3J31=J*C,J32=J*D,J33=J*E,J34=J*J,J35=J*K,J36=J*X,J37=J*Y,J38=J*Z,
     4J41=J/C,J42=J/D,J43=J/E,J44=J/J,J45=J/K,J46=J/X,J47=J/Y,J48=J/Z )
      PARAMETER (
     1K11=J+C,K12=J+D,K13=J+E,K14=J+J,K15=J+K,K16=J+X,K17=J+Y,K18=J+Z,
     2K21=J-C,K22=J-D,K23=J-E,K24=J-J,K25=J-K,K26=J-X,K27=J-Y,K28=J-Z,
     3K31=J*C,K32=J*D,K33=J*E,K34=J*J,K35=J*K,K36=J*X,K37=J*Y,K38=J*Z,
     4K41=J/C,K42=J/D,K43=J/E,K44=J/J,K45=J/K,K46=J/X,K47=J/Y,K48=J/Z )
      PARAMETER (
     1X11=J+C,X12=J+D,X13=J+E,X14=J+J,X15=J+K,X16=J+X,X17=J+Y,X18=J+Z,
     2X21=J-C,X22=J-D,X23=J-E,X24=J-J,X25=J-K,X26=J-X,X27=J-Y,X28=J-Z,
     3X31=J*C,X32=J*D,X33=J*E,X34=J*J,X35=J*K,X36=J*X,X37=J*Y,X38=J*Z,
     4X41=J/C,X42=J/D,X43=J/E,X44=J/J,X45=J/K,X46=J/X,X47=J/Y,X48=J/Z )
      PARAMETER (
     1Y11=J+C,Y12=J+D,Y13=J+E,Y14=J+J,Y15=J+K,Y16=J+X,Y17=J+Y,Y18=J+Z,
     2Y21=J-C,Y22=J-D,Y23=J-E,Y24=J-J,Y25=J-K,Y26=J-X,Y27=J-Y,Y28=J-Z,
     3Y31=J*C,Y32=J*D,Y33=J*E,Y34=J*J,Y35=J*K,Y36=J*X,Y37=J*Y,Y38=J*Z,
     4Y41=J/C,Y42=J/D,Y43=J/E,Y44=J/J,Y45=J/K,Y46=J/X,Y47=J/Y,Y48=J/Z )
      PARAMETER (
     1Z11=J+C,Z12=J+D,Z13=J+E,Z14=J+J,Z15=J+K,Z16=J+X,Z17=J+Y,Z18=J+Z,
     2Z21=J-C,Z22=J-D,Z23=J-E,Z24=J-J,Z25=J-K,Z26=J-X,Z27=J-Y,Z28=J-Z,
     3Z31=J*C,Z32=J*D,Z33=J*E,Z34=J*J,Z35=J*K,Z36=J*X,Z37=J*Y,Z38=J*Z,
     4Z41=J/C,Z42=J/D,Z43=J/E,Z44=J/J,Z45=J/K,Z46=J/X,Z47=J/Y,Z48=J/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = JQ+CQ
      CQ12 = JQ+DQ
      CQ13 = JQ+EQ
      CQ14 = JQ+JQ
      CQ15 = JQ+KQ
      CQ16 = JQ+XQ
      CQ17 = JQ+YQ
      CQ18 = JQ+ZQ
      CQ21 = JQ-CQ
      CQ22 = JQ-DQ
      CQ23 = JQ-EQ
      CQ24 = JQ-JQ
      CQ25 = JQ-KQ
      CQ26 = JQ-XQ
      CQ27 = JQ-YQ
      CQ28 = JQ-ZQ
      CQ31 = JQ*CQ
      CQ32 = JQ*DQ
      CQ33 = JQ*EQ
      CQ34 = JQ*JQ
      CQ35 = JQ*KQ
      CQ36 = JQ*XQ
      CQ37 = JQ*YQ
      CQ38 = JQ*ZQ
      CQ41 = JQ/CQ
      CQ42 = JQ/DQ
      CQ43 = JQ/EQ
      CQ44 = JQ/JQ
      CQ45 = JQ/KQ
      CQ46 = JQ/XQ
      CQ47 = JQ/YQ
      CQ48 = JQ/ZQ
      DQ11 = JQ+CQ
      DQ12 = JQ+DQ
      DQ13 = JQ+EQ
      DQ14 = JQ+JQ
      DQ15 = JQ+KQ
      DQ16 = JQ+XQ
      DQ17 = JQ+YQ
      DQ18 = JQ+ZQ
      DQ21 = JQ-CQ
      DQ22 = JQ-DQ
      DQ23 = JQ-EQ
      DQ24 = JQ-JQ
      DQ25 = JQ-KQ
      DQ26 = JQ-XQ
      DQ27 = JQ-YQ
      DQ28 = JQ-ZQ
      DQ31 = JQ*CQ
      DQ32 = JQ*DQ
      DQ33 = JQ*EQ
      DQ34 = JQ*JQ
      DQ35 = JQ*KQ
      DQ36 = JQ*XQ
      DQ37 = JQ*YQ
      DQ38 = JQ*ZQ
      DQ41 = JQ/CQ
      DQ42 = JQ/DQ
      DQ43 = JQ/EQ
      DQ44 = JQ/JQ
      DQ45 = JQ/KQ
      DQ46 = JQ/XQ
      DQ47 = JQ/YQ
      DQ48 = JQ/ZQ
      EQ11 = JQ+CQ
      EQ12 = JQ+DQ
      EQ13 = JQ+EQ
      EQ14 = JQ+JQ
      EQ15 = JQ+KQ
      EQ16 = JQ+XQ
      EQ17 = JQ+YQ
      EQ18 = JQ+ZQ
      EQ21 = JQ-CQ
      EQ22 = JQ-DQ
      EQ23 = JQ-EQ
      EQ24 = JQ-JQ
      EQ25 = JQ-KQ
      EQ26 = JQ-XQ
      EQ27 = JQ-YQ
      EQ28 = JQ-ZQ
      EQ31 = JQ*CQ
      EQ32 = JQ*DQ
      EQ33 = JQ*EQ
      EQ34 = JQ*JQ
      EQ35 = JQ*KQ
      EQ36 = JQ*XQ
      EQ37 = JQ*YQ
      EQ38 = JQ*ZQ
      EQ41 = JQ/CQ
      EQ42 = JQ/DQ
      EQ43 = JQ/EQ
      EQ44 = JQ/JQ
      EQ45 = JQ/KQ
      EQ46 = JQ/XQ
      EQ47 = JQ/YQ
      EQ48 = JQ/ZQ
      JQ11 = JQ+CQ
      JQ12 = JQ+DQ
      JQ13 = JQ+EQ
      JQ14 = JQ+JQ
      JQ15 = JQ+KQ
      JQ16 = JQ+XQ
      JQ17 = JQ+YQ
      JQ18 = JQ+ZQ
      JQ21 = JQ-CQ
      JQ22 = JQ-DQ
      JQ23 = JQ-EQ
      JQ24 = JQ-JQ
      JQ25 = JQ-KQ
      JQ26 = JQ-XQ
      JQ27 = JQ-YQ
      JQ28 = JQ-ZQ
      JQ31 = JQ*CQ
      JQ32 = JQ*DQ
      JQ33 = JQ*EQ
      JQ34 = JQ*JQ
      JQ35 = JQ*KQ
      JQ36 = JQ*XQ
      JQ37 = JQ*YQ
      JQ38 = JQ*ZQ
      JQ41 = JQ/CQ
      JQ42 = JQ/DQ
      JQ43 = JQ/EQ
      JQ44 = JQ/JQ
      JQ45 = JQ/KQ
      JQ46 = JQ/XQ
      JQ47 = JQ/YQ
      JQ48 = JQ/ZQ
      KQ11 = JQ+CQ
      KQ12 = JQ+DQ
      KQ13 = JQ+EQ
      KQ14 = JQ+JQ
      KQ15 = JQ+KQ
      KQ16 = JQ+XQ
      KQ17 = JQ+YQ
      KQ18 = JQ+ZQ
      KQ21 = JQ-CQ
      KQ22 = JQ-DQ
      KQ23 = JQ-EQ
      KQ24 = JQ-JQ
      KQ25 = JQ-KQ
      KQ26 = JQ-XQ
      KQ27 = JQ-YQ
      KQ28 = JQ-ZQ
      KQ31 = JQ*CQ
      KQ32 = JQ*DQ
      KQ33 = JQ*EQ
      KQ34 = JQ*JQ
      KQ35 = JQ*KQ
      KQ36 = JQ*XQ
      KQ37 = JQ*YQ
      KQ38 = JQ*ZQ
      KQ41 = JQ/CQ
      KQ42 = JQ/DQ
      KQ43 = JQ/EQ
      KQ44 = JQ/JQ
      KQ45 = JQ/KQ
      KQ46 = JQ/XQ
      KQ47 = JQ/YQ
      KQ48 = JQ/ZQ
      XQ11 = JQ+CQ
      XQ12 = JQ+DQ
      XQ13 = JQ+EQ
      XQ14 = JQ+JQ
      XQ15 = JQ+KQ
      XQ16 = JQ+XQ
      XQ17 = JQ+YQ
      XQ18 = JQ+ZQ
      XQ21 = JQ-CQ
      XQ22 = JQ-DQ
      XQ23 = JQ-EQ
      XQ24 = JQ-JQ
      XQ25 = JQ-KQ
      XQ26 = JQ-XQ
      XQ27 = JQ-YQ
      XQ28 = JQ-ZQ
      XQ31 = JQ*CQ
      XQ32 = JQ*DQ
      XQ33 = JQ*EQ
      XQ34 = JQ*JQ
      XQ35 = JQ*KQ
      XQ36 = JQ*XQ
      XQ37 = JQ*YQ
      XQ38 = JQ*ZQ
      XQ41 = JQ/CQ
      XQ42 = JQ/DQ
      XQ43 = JQ/EQ
      XQ44 = JQ/JQ
      XQ45 = JQ/KQ
      XQ46 = JQ/XQ
      XQ47 = JQ/YQ
      XQ48 = JQ/ZQ
      YQ11 = JQ+CQ
      YQ12 = JQ+DQ
      YQ13 = JQ+EQ
      YQ14 = JQ+JQ
      YQ15 = JQ+KQ
      YQ16 = JQ+XQ
      YQ17 = JQ+YQ
      YQ18 = JQ+ZQ
      YQ21 = JQ-CQ
      YQ22 = JQ-DQ
      YQ23 = JQ-EQ
      YQ24 = JQ-JQ
      YQ25 = JQ-KQ
      YQ26 = JQ-XQ
      YQ27 = JQ-YQ
      YQ28 = JQ-ZQ
      YQ31 = JQ*CQ
      YQ32 = JQ*DQ
      YQ33 = JQ*EQ
      YQ34 = JQ*JQ
      YQ35 = JQ*KQ
      YQ36 = JQ*XQ
      YQ37 = JQ*YQ
      YQ38 = JQ*ZQ
      YQ41 = JQ/CQ
      YQ42 = JQ/DQ
      YQ43 = JQ/EQ
      YQ44 = JQ/JQ
      YQ45 = JQ/KQ
      YQ46 = JQ/XQ
      YQ47 = JQ/YQ
      YQ48 = JQ/ZQ
      ZQ11 = JQ+CQ
      ZQ12 = JQ+DQ
      ZQ13 = JQ+EQ
      ZQ14 = JQ+JQ
      ZQ15 = JQ+KQ
      ZQ16 = JQ+XQ
      ZQ17 = JQ+YQ
      ZQ18 = JQ+ZQ
      ZQ21 = JQ-CQ
      ZQ22 = JQ-DQ
      ZQ23 = JQ-EQ
      ZQ24 = JQ-JQ
      ZQ25 = JQ-KQ
      ZQ26 = JQ-XQ
      ZQ27 = JQ-YQ
      ZQ28 = JQ-ZQ
      ZQ31 = JQ*CQ
      ZQ32 = JQ*DQ
      ZQ33 = JQ*EQ
      ZQ34 = JQ*JQ
      ZQ35 = JQ*KQ
      ZQ36 = JQ*XQ
      ZQ37 = JQ*YQ
      ZQ38 = JQ*ZQ
      ZQ41 = JQ/CQ
      ZQ42 = JQ/DQ
      ZQ43 = JQ/EQ
      ZQ44 = JQ/JQ
      ZQ45 = JQ/KQ
      ZQ46 = JQ/XQ
      ZQ47 = JQ/YQ
      ZQ48 = JQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND J +-*/ '
      END
      SUBROUTINE CHECK         K
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=K+C,C12=K+D,C13=K+E,C14=K+J,C15=K+K,C16=K+X,C17=K+Y,C18=K+Z,
     2C21=K-C,C22=K-D,C23=K-E,C24=K-J,C25=K-K,C26=K-X,C27=K-Y,C28=K-Z,
     3C31=K*C,C32=K*D,C33=K*E,C34=K*J,C35=K*K,C36=K*X,C37=K*Y,C38=K*Z,
     4C41=K/C,C42=K/D,C43=K/E,C44=K/J,C45=K/K,C46=K/X,C47=K/Y,C48=K/Z )
      PARAMETER (
     1D11=K+C,D12=K+D,D13=K+E,D14=K+J,D15=K+K,D16=K+X,D17=K+Y,D18=K+Z,
     2D21=K-C,D22=K-D,D23=K-E,D24=K-J,D25=K-K,D26=K-X,D27=K-Y,D28=K-Z,
     3D31=K*C,D32=K*D,D33=K*E,D34=K*J,D35=K*K,D36=K*X,D37=K*Y,D38=K*Z,
     4D41=K/C,D42=K/D,D43=K/E,D44=K/J,D45=K/K,D46=K/X,D47=K/Y,D48=K/Z )
      PARAMETER (
     1E11=K+C,E12=K+D,E13=K+E,E14=K+J,E15=K+K,E16=K+X,E17=K+Y,E18=K+Z,
     2E21=K-C,E22=K-D,E23=K-E,E24=K-J,E25=K-K,E26=K-X,E27=K-Y,E28=K-Z,
     3E31=K*C,E32=K*D,E33=K*E,E34=K*J,E35=K*K,E36=K*X,E37=K*Y,E38=K*Z,
     4E41=K/C,E42=K/D,E43=K/E,E44=K/J,E45=K/K,E46=K/X,E47=K/Y,E48=K/Z )
      PARAMETER (
     1J11=K+C,J12=K+D,J13=K+E,J14=K+J,J15=K+K,J16=K+X,J17=K+Y,J18=K+Z,
     2J21=K-C,J22=K-D,J23=K-E,J24=K-J,J25=K-K,J26=K-X,J27=K-Y,J28=K-Z,
     3J31=K*C,J32=K*D,J33=K*E,J34=K*J,J35=K*K,J36=K*X,J37=K*Y,J38=K*Z,
     4J41=K/C,J42=K/D,J43=K/E,J44=K/J,J45=K/K,J46=K/X,J47=K/Y,J48=K/Z )
      PARAMETER (
     1K11=K+C,K12=K+D,K13=K+E,K14=K+J,K15=K+K,K16=K+X,K17=K+Y,K18=K+Z,
     2K21=K-C,K22=K-D,K23=K-E,K24=K-J,K25=K-K,K26=K-X,K27=K-Y,K28=K-Z,
     3K31=K*C,K32=K*D,K33=K*E,K34=K*J,K35=K*K,K36=K*X,K37=K*Y,K38=K*Z,
     4K41=K/C,K42=K/D,K43=K/E,K44=K/J,K45=K/K,K46=K/X,K47=K/Y,K48=K/Z )
      PARAMETER (
     1X11=K+C,X12=K+D,X13=K+E,X14=K+J,X15=K+K,X16=K+X,X17=K+Y,X18=K+Z,
     2X21=K-C,X22=K-D,X23=K-E,X24=K-J,X25=K-K,X26=K-X,X27=K-Y,X28=K-Z,
     3X31=K*C,X32=K*D,X33=K*E,X34=K*J,X35=K*K,X36=K*X,X37=K*Y,X38=K*Z,
     4X41=K/C,X42=K/D,X43=K/E,X44=K/J,X45=K/K,X46=K/X,X47=K/Y,X48=K/Z )
      PARAMETER (
     1Y11=K+C,Y12=K+D,Y13=K+E,Y14=K+J,Y15=K+K,Y16=K+X,Y17=K+Y,Y18=K+Z,
     2Y21=K-C,Y22=K-D,Y23=K-E,Y24=K-J,Y25=K-K,Y26=K-X,Y27=K-Y,Y28=K-Z,
     3Y31=K*C,Y32=K*D,Y33=K*E,Y34=K*J,Y35=K*K,Y36=K*X,Y37=K*Y,Y38=K*Z,
     4Y41=K/C,Y42=K/D,Y43=K/E,Y44=K/J,Y45=K/K,Y46=K/X,Y47=K/Y,Y48=K/Z )
      PARAMETER (
     1Z11=K+C,Z12=K+D,Z13=K+E,Z14=K+J,Z15=K+K,Z16=K+X,Z17=K+Y,Z18=K+Z,
     2Z21=K-C,Z22=K-D,Z23=K-E,Z24=K-J,Z25=K-K,Z26=K-X,Z27=K-Y,Z28=K-Z,
     3Z31=K*C,Z32=K*D,Z33=K*E,Z34=K*J,Z35=K*K,Z36=K*X,Z37=K*Y,Z38=K*Z,
     4Z41=K/C,Z42=K/D,Z43=K/E,Z44=K/J,Z45=K/K,Z46=K/X,Z47=K/Y,Z48=K/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = KQ+CQ
      CQ12 = KQ+DQ
      CQ13 = KQ+EQ
      CQ14 = KQ+JQ
      CQ15 = KQ+KQ
      CQ16 = KQ+XQ
      CQ17 = KQ+YQ
      CQ18 = KQ+ZQ
      CQ21 = KQ-CQ
      CQ22 = KQ-DQ
      CQ23 = KQ-EQ
      CQ24 = KQ-JQ
      CQ25 = KQ-KQ
      CQ26 = KQ-XQ
      CQ27 = KQ-YQ
      CQ28 = KQ-ZQ
      CQ31 = KQ*CQ
      CQ32 = KQ*DQ
      CQ33 = KQ*EQ
      CQ34 = KQ*JQ
      CQ35 = KQ*KQ
      CQ36 = KQ*XQ
      CQ37 = KQ*YQ
      CQ38 = KQ*ZQ
      CQ41 = KQ/CQ
      CQ42 = KQ/DQ
      CQ43 = KQ/EQ
      CQ44 = KQ/JQ
      CQ45 = KQ/KQ
      CQ46 = KQ/XQ
      CQ47 = KQ/YQ
      CQ48 = KQ/ZQ
      DQ11 = KQ+CQ
      DQ12 = KQ+DQ
      DQ13 = KQ+EQ
      DQ14 = KQ+JQ
      DQ15 = KQ+KQ
      DQ16 = KQ+XQ
      DQ17 = KQ+YQ
      DQ18 = KQ+ZQ
      DQ21 = KQ-CQ
      DQ22 = KQ-DQ
      DQ23 = KQ-EQ
      DQ24 = KQ-JQ
      DQ25 = KQ-KQ
      DQ26 = KQ-XQ
      DQ27 = KQ-YQ
      DQ28 = KQ-ZQ
      DQ31 = KQ*CQ
      DQ32 = KQ*DQ
      DQ33 = KQ*EQ
      DQ34 = KQ*JQ
      DQ35 = KQ*KQ
      DQ36 = KQ*XQ
      DQ37 = KQ*YQ
      DQ38 = KQ*ZQ
      DQ41 = KQ/CQ
      DQ42 = KQ/DQ
      DQ43 = KQ/EQ
      DQ44 = KQ/JQ
      DQ45 = KQ/KQ
      DQ46 = KQ/XQ
      DQ47 = KQ/YQ
      DQ48 = KQ/ZQ
      EQ11 = KQ+CQ
      EQ12 = KQ+DQ
      EQ13 = KQ+EQ
      EQ14 = KQ+JQ
      EQ15 = KQ+KQ
      EQ16 = KQ+XQ
      EQ17 = KQ+YQ
      EQ18 = KQ+ZQ
      EQ21 = KQ-CQ
      EQ22 = KQ-DQ
      EQ23 = KQ-EQ
      EQ24 = KQ-JQ
      EQ25 = KQ-KQ
      EQ26 = KQ-XQ
      EQ27 = KQ-YQ
      EQ28 = KQ-ZQ
      EQ31 = KQ*CQ
      EQ32 = KQ*DQ
      EQ33 = KQ*EQ
      EQ34 = KQ*JQ
      EQ35 = KQ*KQ
      EQ36 = KQ*XQ
      EQ37 = KQ*YQ
      EQ38 = KQ*ZQ
      EQ41 = KQ/CQ
      EQ42 = KQ/DQ
      EQ43 = KQ/EQ
      EQ44 = KQ/JQ
      EQ45 = KQ/KQ
      EQ46 = KQ/XQ
      EQ47 = KQ/YQ
      EQ48 = KQ/ZQ
      JQ11 = KQ+CQ
      JQ12 = KQ+DQ
      JQ13 = KQ+EQ
      JQ14 = KQ+JQ
      JQ15 = KQ+KQ
      JQ16 = KQ+XQ
      JQ17 = KQ+YQ
      JQ18 = KQ+ZQ
      JQ21 = KQ-CQ
      JQ22 = KQ-DQ
      JQ23 = KQ-EQ
      JQ24 = KQ-JQ
      JQ25 = KQ-KQ
      JQ26 = KQ-XQ
      JQ27 = KQ-YQ
      JQ28 = KQ-ZQ
      JQ31 = KQ*CQ
      JQ32 = KQ*DQ
      JQ33 = KQ*EQ
      JQ34 = KQ*JQ
      JQ35 = KQ*KQ
      JQ36 = KQ*XQ
      JQ37 = KQ*YQ
      JQ38 = KQ*ZQ
      JQ41 = KQ/CQ
      JQ42 = KQ/DQ
      JQ43 = KQ/EQ
      JQ44 = KQ/JQ
      JQ45 = KQ/KQ
      JQ46 = KQ/XQ
      JQ47 = KQ/YQ
      JQ48 = KQ/ZQ
      KQ11 = KQ+CQ
      KQ12 = KQ+DQ
      KQ13 = KQ+EQ
      KQ14 = KQ+JQ
      KQ15 = KQ+KQ
      KQ16 = KQ+XQ
      KQ17 = KQ+YQ
      KQ18 = KQ+ZQ
      KQ21 = KQ-CQ
      KQ22 = KQ-DQ
      KQ23 = KQ-EQ
      KQ24 = KQ-JQ
      KQ25 = KQ-KQ
      KQ26 = KQ-XQ
      KQ27 = KQ-YQ
      KQ28 = KQ-ZQ
      KQ31 = KQ*CQ
      KQ32 = KQ*DQ
      KQ33 = KQ*EQ
      KQ34 = KQ*JQ
      KQ35 = KQ*KQ
      KQ36 = KQ*XQ
      KQ37 = KQ*YQ
      KQ38 = KQ*ZQ
      KQ41 = KQ/CQ
      KQ42 = KQ/DQ
      KQ43 = KQ/EQ
      KQ44 = KQ/JQ
      KQ45 = KQ/KQ
      KQ46 = KQ/XQ
      KQ47 = KQ/YQ
      KQ48 = KQ/ZQ
      XQ11 = KQ+CQ
      XQ12 = KQ+DQ
      XQ13 = KQ+EQ
      XQ14 = KQ+JQ
      XQ15 = KQ+KQ
      XQ16 = KQ+XQ
      XQ17 = KQ+YQ
      XQ18 = KQ+ZQ
      XQ21 = KQ-CQ
      XQ22 = KQ-DQ
      XQ23 = KQ-EQ
      XQ24 = KQ-JQ
      XQ25 = KQ-KQ
      XQ26 = KQ-XQ
      XQ27 = KQ-YQ
      XQ28 = KQ-ZQ
      XQ31 = KQ*CQ
      XQ32 = KQ*DQ
      XQ33 = KQ*EQ
      XQ34 = KQ*JQ
      XQ35 = KQ*KQ
      XQ36 = KQ*XQ
      XQ37 = KQ*YQ
      XQ38 = KQ*ZQ
      XQ41 = KQ/CQ
      XQ42 = KQ/DQ
      XQ43 = KQ/EQ
      XQ44 = KQ/JQ
      XQ45 = KQ/KQ
      XQ46 = KQ/XQ
      XQ47 = KQ/YQ
      XQ48 = KQ/ZQ
      YQ11 = KQ+CQ
      YQ12 = KQ+DQ
      YQ13 = KQ+EQ
      YQ14 = KQ+JQ
      YQ15 = KQ+KQ
      YQ16 = KQ+XQ
      YQ17 = KQ+YQ
      YQ18 = KQ+ZQ
      YQ21 = KQ-CQ
      YQ22 = KQ-DQ
      YQ23 = KQ-EQ
      YQ24 = KQ-JQ
      YQ25 = KQ-KQ
      YQ26 = KQ-XQ
      YQ27 = KQ-YQ
      YQ28 = KQ-ZQ
      YQ31 = KQ*CQ
      YQ32 = KQ*DQ
      YQ33 = KQ*EQ
      YQ34 = KQ*JQ
      YQ35 = KQ*KQ
      YQ36 = KQ*XQ
      YQ37 = KQ*YQ
      YQ38 = KQ*ZQ
      YQ41 = KQ/CQ
      YQ42 = KQ/DQ
      YQ43 = KQ/EQ
      YQ44 = KQ/JQ
      YQ45 = KQ/KQ
      YQ46 = KQ/XQ
      YQ47 = KQ/YQ
      YQ48 = KQ/ZQ
      ZQ11 = KQ+CQ
      ZQ12 = KQ+DQ
      ZQ13 = KQ+EQ
      ZQ14 = KQ+JQ
      ZQ15 = KQ+KQ
      ZQ16 = KQ+XQ
      ZQ17 = KQ+YQ
      ZQ18 = KQ+ZQ
      ZQ21 = KQ-CQ
      ZQ22 = KQ-DQ
      ZQ23 = KQ-EQ
      ZQ24 = KQ-JQ
      ZQ25 = KQ-KQ
      ZQ26 = KQ-XQ
      ZQ27 = KQ-YQ
      ZQ28 = KQ-ZQ
      ZQ31 = KQ*CQ
      ZQ32 = KQ*DQ
      ZQ33 = KQ*EQ
      ZQ34 = KQ*JQ
      ZQ35 = KQ*KQ
      ZQ36 = KQ*XQ
      ZQ37 = KQ*YQ
      ZQ38 = KQ*ZQ
      ZQ41 = KQ/CQ
      ZQ42 = KQ/DQ
      ZQ43 = KQ/EQ
      ZQ44 = KQ/JQ
      ZQ45 = KQ/KQ
      ZQ46 = KQ/XQ
      ZQ47 = KQ/YQ
      ZQ48 = KQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
#if defined(_WIN32) || defined(__i386)
      IF (ABS(D46-DQ46)>1.0E-6) PRINT *,'FAIL'
#else
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
#endif
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
#if defined(_WIN32) || defined(__i386)
      IF (ABS(Y46-YQ46)>1.0E-6) PRINT *,'FAIL'
#else
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
#endif
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND K +-*/ '
      END
      SUBROUTINE CHECK         X
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=X+C,C12=X+D,C13=X+E,C14=X+J,C15=X+K,C16=X+X,C17=X+Y,C18=X+Z,
     2C21=X-C,C22=X-D,C23=X-E,C24=X-J,C25=X-K,C26=X-X,C27=X-Y,C28=X-Z,
     3C31=X*C,C32=X*D,C33=X*E,C34=X*J,C35=X*K,C36=X*X,C37=X*Y,C38=X*Z,
     4C41=X/C,C42=X/D,C43=X/E,C44=X/J,C45=X/K,C46=X/X,C47=X/Y,C48=X/Z )
      PARAMETER (
     1D11=X+C,D12=X+D,D13=X+E,D14=X+J,D15=X+K,D16=X+X,D17=X+Y,D18=X+Z,
     2D21=X-C,D22=X-D,D23=X-E,D24=X-J,D25=X-K,D26=X-X,D27=X-Y,D28=X-Z,
     3D31=X*C,D32=X*D,D33=X*E,D34=X*J,D35=X*K,D36=X*X,D37=X*Y,D38=X*Z,
     4D41=X/C,D42=X/D,D43=X/E,D44=X/J,D45=X/K,D46=X/X,D47=X/Y,D48=X/Z )
      PARAMETER (
     1E11=X+C,E12=X+D,E13=X+E,E14=X+J,E15=X+K,E16=X+X,E17=X+Y,E18=X+Z,
     2E21=X-C,E22=X-D,E23=X-E,E24=X-J,E25=X-K,E26=X-X,E27=X-Y,E28=X-Z,
     3E31=X*C,E32=X*D,E33=X*E,E34=X*J,E35=X*K,E36=X*X,E37=X*Y,E38=X*Z,
     4E41=X/C,E42=X/D,E43=X/E,E44=X/J,E45=X/K,E46=X/X,E47=X/Y,E48=X/Z )
      PARAMETER (
     1J11=X+C,J12=X+D,J13=X+E,J14=X+J,J15=X+K,J16=X+X,J17=X+Y,J18=X+Z,
     2J21=X-C,J22=X-D,J23=X-E,J24=X-J,J25=X-K,J26=X-X,J27=X-Y,J28=X-Z,
     3J31=X*C,J32=X*D,J33=X*E,J34=X*J,J35=X*K,J36=X*X,J37=X*Y,J38=X*Z,
     4J41=X/C,J42=X/D,J43=X/E,J44=X/J,J45=X/K,J46=X/X,J47=X/Y,J48=X/Z )
      PARAMETER (
     1K11=X+C,K12=X+D,K13=X+E,K14=X+J,K15=X+K,K16=X+X,K17=X+Y,K18=X+Z,
     2K21=X-C,K22=X-D,K23=X-E,K24=X-J,K25=X-K,K26=X-X,K27=X-Y,K28=X-Z,
     3K31=X*C,K32=X*D,K33=X*E,K34=X*J,K35=X*K,K36=X*X,K37=X*Y,K38=X*Z,
     4K41=X/C,K42=X/D,K43=X/E,K44=X/J,K45=X/K,K46=X/X,K47=X/Y,K48=X/Z )
      PARAMETER (
     1X11=X+C,X12=X+D,X13=X+E,X14=X+J,X15=X+K,X16=X+X,X17=X+Y,X18=X+Z,
     2X21=X-C,X22=X-D,X23=X-E,X24=X-J,X25=X-K,X26=X-X,X27=X-Y,X28=X-Z,
     3X31=X*C,X32=X*D,X33=X*E,X34=X*J,X35=X*K,X36=X*X,X37=X*Y,X38=X*Z,
     4X41=X/C,X42=X/D,X43=X/E,X44=X/J,X45=X/K,X46=X/X,X47=X/Y,X48=X/Z )
      PARAMETER (
     1Y11=X+C,Y12=X+D,Y13=X+E,Y14=X+J,Y15=X+K,Y16=X+X,Y17=X+Y,Y18=X+Z,
     2Y21=X-C,Y22=X-D,Y23=X-E,Y24=X-J,Y25=X-K,Y26=X-X,Y27=X-Y,Y28=X-Z,
     3Y31=X*C,Y32=X*D,Y33=X*E,Y34=X*J,Y35=X*K,Y36=X*X,Y37=X*Y,Y38=X*Z,
     4Y41=X/C,Y42=X/D,Y43=X/E,Y44=X/J,Y45=X/K,Y46=X/X,Y47=X/Y,Y48=X/Z )
      PARAMETER (
     1Z11=X+C,Z12=X+D,Z13=X+E,Z14=X+J,Z15=X+K,Z16=X+X,Z17=X+Y,Z18=X+Z,
     2Z21=X-C,Z22=X-D,Z23=X-E,Z24=X-J,Z25=X-K,Z26=X-X,Z27=X-Y,Z28=X-Z,
     3Z31=X*C,Z32=X*D,Z33=X*E,Z34=X*J,Z35=X*K,Z36=X*X,Z37=X*Y,Z38=X*Z,
     4Z41=X/C,Z42=X/D,Z43=X/E,Z44=X/J,Z45=X/K,Z46=X/X,Z47=X/Y,Z48=X/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = XQ+CQ
      CQ12 = XQ+DQ
      CQ13 = XQ+EQ
      CQ14 = XQ+JQ
      CQ15 = XQ+KQ
      CQ16 = XQ+XQ
      CQ17 = XQ+YQ
      CQ18 = XQ+ZQ
      CQ21 = XQ-CQ
      CQ22 = XQ-DQ
      CQ23 = XQ-EQ
      CQ24 = XQ-JQ
      CQ25 = XQ-KQ
      CQ26 = XQ-XQ
      CQ27 = XQ-YQ
      CQ28 = XQ-ZQ
      CQ31 = XQ*CQ
      CQ32 = XQ*DQ
      CQ33 = XQ*EQ
      CQ34 = XQ*JQ
      CQ35 = XQ*KQ
      CQ36 = XQ*XQ
      CQ37 = XQ*YQ
      CQ38 = XQ*ZQ
      CQ41 = XQ/CQ
      CQ42 = XQ/DQ
      CQ43 = XQ/EQ
      CQ44 = XQ/JQ
      CQ45 = XQ/KQ
      CQ46 = XQ/XQ
      CQ47 = XQ/YQ
      CQ48 = XQ/ZQ
      DQ11 = XQ+CQ
      DQ12 = XQ+DQ
      DQ13 = XQ+EQ
      DQ14 = XQ+JQ
      DQ15 = XQ+KQ
      DQ16 = XQ+XQ
      DQ17 = XQ+YQ
      DQ18 = XQ+ZQ
      DQ21 = XQ-CQ
      DQ22 = XQ-DQ
      DQ23 = XQ-EQ
      DQ24 = XQ-JQ
      DQ25 = XQ-KQ
      DQ26 = XQ-XQ
      DQ27 = XQ-YQ
      DQ28 = XQ-ZQ
      DQ31 = XQ*CQ
      DQ32 = XQ*DQ
      DQ33 = XQ*EQ
      DQ34 = XQ*JQ
      DQ35 = XQ*KQ
      DQ36 = XQ*XQ
      DQ37 = XQ*YQ
      DQ38 = XQ*ZQ
      DQ41 = XQ/CQ
      DQ42 = XQ/DQ
      DQ43 = XQ/EQ
      DQ44 = XQ/JQ
      DQ45 = XQ/KQ
      DQ46 = XQ/XQ
      DQ47 = XQ/YQ
      DQ48 = XQ/ZQ
      EQ11 = XQ+CQ
      EQ12 = XQ+DQ
      EQ13 = XQ+EQ
      EQ14 = XQ+JQ
      EQ15 = XQ+KQ
      EQ16 = XQ+XQ
      EQ17 = XQ+YQ
      EQ18 = XQ+ZQ
      EQ21 = XQ-CQ
      EQ22 = XQ-DQ
      EQ23 = XQ-EQ
      EQ24 = XQ-JQ
      EQ25 = XQ-KQ
      EQ26 = XQ-XQ
      EQ27 = XQ-YQ
      EQ28 = XQ-ZQ
      EQ31 = XQ*CQ
      EQ32 = XQ*DQ
      EQ33 = XQ*EQ
      EQ34 = XQ*JQ
      EQ35 = XQ*KQ
      EQ36 = XQ*XQ
      EQ37 = XQ*YQ
      EQ38 = XQ*ZQ
      EQ41 = XQ/CQ
      EQ42 = XQ/DQ
      EQ43 = XQ/EQ
      EQ44 = XQ/JQ
      EQ45 = XQ/KQ
      EQ46 = XQ/XQ
      EQ47 = XQ/YQ
      EQ48 = XQ/ZQ
      JQ11 = XQ+CQ
      JQ12 = XQ+DQ
      JQ13 = XQ+EQ
      JQ14 = XQ+JQ
      JQ15 = XQ+KQ
      JQ16 = XQ+XQ
      JQ17 = XQ+YQ
      JQ18 = XQ+ZQ
      JQ21 = XQ-CQ
      JQ22 = XQ-DQ
      JQ23 = XQ-EQ
      JQ24 = XQ-JQ
      JQ25 = XQ-KQ
      JQ26 = XQ-XQ
      JQ27 = XQ-YQ
      JQ28 = XQ-ZQ
      JQ31 = XQ*CQ
      JQ32 = XQ*DQ
      JQ33 = XQ*EQ
      JQ34 = XQ*JQ
      JQ35 = XQ*KQ
      JQ36 = XQ*XQ
      JQ37 = XQ*YQ
      JQ38 = XQ*ZQ
      JQ41 = XQ/CQ
      JQ42 = XQ/DQ
      JQ43 = XQ/EQ
      JQ44 = XQ/JQ
      JQ45 = XQ/KQ
      JQ46 = XQ/XQ
      JQ47 = XQ/YQ
      JQ48 = XQ/ZQ
      KQ11 = XQ+CQ
      KQ12 = XQ+DQ
      KQ13 = XQ+EQ
      KQ14 = XQ+JQ
      KQ15 = XQ+KQ
      KQ16 = XQ+XQ
      KQ17 = XQ+YQ
      KQ18 = XQ+ZQ
      KQ21 = XQ-CQ
      KQ22 = XQ-DQ
      KQ23 = XQ-EQ
      KQ24 = XQ-JQ
      KQ25 = XQ-KQ
      KQ26 = XQ-XQ
      KQ27 = XQ-YQ
      KQ28 = XQ-ZQ
      KQ31 = XQ*CQ
      KQ32 = XQ*DQ
      KQ33 = XQ*EQ
      KQ34 = XQ*JQ
      KQ35 = XQ*KQ
      KQ36 = XQ*XQ
      KQ37 = XQ*YQ
      KQ38 = XQ*ZQ
      KQ41 = XQ/CQ
      KQ42 = XQ/DQ
      KQ43 = XQ/EQ
      KQ44 = XQ/JQ
      KQ45 = XQ/KQ
      KQ46 = XQ/XQ
      KQ47 = XQ/YQ
      KQ48 = XQ/ZQ
      XQ11 = XQ+CQ
      XQ12 = XQ+DQ
      XQ13 = XQ+EQ
      XQ14 = XQ+JQ
      XQ15 = XQ+KQ
      XQ16 = XQ+XQ
      XQ17 = XQ+YQ
      XQ18 = XQ+ZQ
      XQ21 = XQ-CQ
      XQ22 = XQ-DQ
      XQ23 = XQ-EQ
      XQ24 = XQ-JQ
      XQ25 = XQ-KQ
      XQ26 = XQ-XQ
      XQ27 = XQ-YQ
      XQ28 = XQ-ZQ
      XQ31 = XQ*CQ
      XQ32 = XQ*DQ
      XQ33 = XQ*EQ
      XQ34 = XQ*JQ
      XQ35 = XQ*KQ
      XQ36 = XQ*XQ
      XQ37 = XQ*YQ
      XQ38 = XQ*ZQ
      XQ41 = XQ/CQ
      XQ42 = XQ/DQ
      XQ43 = XQ/EQ
      XQ44 = XQ/JQ
      XQ45 = XQ/KQ
      XQ46 = XQ/XQ
      XQ47 = XQ/YQ
      XQ48 = XQ/ZQ
      YQ11 = XQ+CQ
      YQ12 = XQ+DQ
      YQ13 = XQ+EQ
      YQ14 = XQ+JQ
      YQ15 = XQ+KQ
      YQ16 = XQ+XQ
      YQ17 = XQ+YQ
      YQ18 = XQ+ZQ
      YQ21 = XQ-CQ
      YQ22 = XQ-DQ
      YQ23 = XQ-EQ
      YQ24 = XQ-JQ
      YQ25 = XQ-KQ
      YQ26 = XQ-XQ
      YQ27 = XQ-YQ
      YQ28 = XQ-ZQ
      YQ31 = XQ*CQ
      YQ32 = XQ*DQ
      YQ33 = XQ*EQ
      YQ34 = XQ*JQ
      YQ35 = XQ*KQ
      YQ36 = XQ*XQ
      YQ37 = XQ*YQ
      YQ38 = XQ*ZQ
      YQ41 = XQ/CQ
      YQ42 = XQ/DQ
      YQ43 = XQ/EQ
      YQ44 = XQ/JQ
      YQ45 = XQ/KQ
      YQ46 = XQ/XQ
      YQ47 = XQ/YQ
      YQ48 = XQ/ZQ
      ZQ11 = XQ+CQ
      ZQ12 = XQ+DQ
      ZQ13 = XQ+EQ
      ZQ14 = XQ+JQ
      ZQ15 = XQ+KQ
      ZQ16 = XQ+XQ
      ZQ17 = XQ+YQ
      ZQ18 = XQ+ZQ
      ZQ21 = XQ-CQ
      ZQ22 = XQ-DQ
      ZQ23 = XQ-EQ
      ZQ24 = XQ-JQ
      ZQ25 = XQ-KQ
      ZQ26 = XQ-XQ
      ZQ27 = XQ-YQ
      ZQ28 = XQ-ZQ
      ZQ31 = XQ*CQ
      ZQ32 = XQ*DQ
      ZQ33 = XQ*EQ
      ZQ34 = XQ*JQ
      ZQ35 = XQ*KQ
      ZQ36 = XQ*XQ
      ZQ37 = XQ*YQ
      ZQ38 = XQ*ZQ
      ZQ41 = XQ/CQ
      ZQ42 = XQ/DQ
      ZQ43 = XQ/EQ
      ZQ44 = XQ/JQ
      ZQ45 = XQ/KQ
      ZQ46 = XQ/XQ
      ZQ47 = XQ/YQ
      ZQ48 = XQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND X +-*/ '
      END
      SUBROUTINE CHECK         Y
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=Y+C,C12=Y+D,C13=Y+E,C14=Y+J,C15=Y+K,C16=Y+X,C17=Y+Y,C18=Y+Z,
     2C21=Y-C,C22=Y-D,C23=Y-E,C24=Y-J,C25=Y-K,C26=Y-X,C27=Y-Y,C28=Y-Z,
     3C31=Y*C,C32=Y*D,C33=Y*E,C34=Y*J,C35=Y*K,C36=Y*X,C37=Y*Y,C38=Y*Z,
     4C41=Y/C,C42=Y/D,C43=Y/E,C44=Y/J,C45=Y/K,C46=Y/X,C47=Y/Y,C48=Y/Z )
      PARAMETER (
     1D11=Y+C,D12=Y+D,D13=Y+E,D14=Y+J,D15=Y+K,D16=Y+X,D17=Y+Y,D18=Y+Z,
     2D21=Y-C,D22=Y-D,D23=Y-E,D24=Y-J,D25=Y-K,D26=Y-X,D27=Y-Y,D28=Y-Z,
     3D31=Y*C,D32=Y*D,D33=Y*E,D34=Y*J,D35=Y*K,D36=Y*X,D37=Y*Y,D38=Y*Z,
     4D41=Y/C,D42=Y/D,D43=Y/E,D44=Y/J,D45=Y/K,D46=Y/X,D47=Y/Y,D48=Y/Z )
      PARAMETER (
     1E11=Y+C,E12=Y+D,E13=Y+E,E14=Y+J,E15=Y+K,E16=Y+X,E17=Y+Y,E18=Y+Z,
     2E21=Y-C,E22=Y-D,E23=Y-E,E24=Y-J,E25=Y-K,E26=Y-X,E27=Y-Y,E28=Y-Z,
     3E31=Y*C,E32=Y*D,E33=Y*E,E34=Y*J,E35=Y*K,E36=Y*X,E37=Y*Y,E38=Y*Z,
     4E41=Y/C,E42=Y/D,E43=Y/E,E44=Y/J,E45=Y/K,E46=Y/X,E47=Y/Y,E48=Y/Z )
      PARAMETER (
     1J11=Y+C,J12=Y+D,J13=Y+E,J14=Y+J,J15=Y+K,J16=Y+X,J17=Y+Y,J18=Y+Z,
     2J21=Y-C,J22=Y-D,J23=Y-E,J24=Y-J,J25=Y-K,J26=Y-X,J27=Y-Y,J28=Y-Z,
     3J31=Y*C,J32=Y*D,J33=Y*E,J34=Y*J,J35=Y*K,J36=Y*X,J37=Y*Y,J38=Y*Z,
     4J41=Y/C,J42=Y/D,J43=Y/E,J44=Y/J,J45=Y/K,J46=Y/X,J47=Y/Y,J48=Y/Z )
      PARAMETER (
     1K11=Y+C,K12=Y+D,K13=Y+E,K14=Y+J,K15=Y+K,K16=Y+X,K17=Y+Y,K18=Y+Z,
     2K21=Y-C,K22=Y-D,K23=Y-E,K24=Y-J,K25=Y-K,K26=Y-X,K27=Y-Y,K28=Y-Z,
     3K31=Y*C,K32=Y*D,K33=Y*E,K34=Y*J,K35=Y*K,K36=Y*X,K37=Y*Y,K38=Y*Z,
     4K41=Y/C,K42=Y/D,K43=Y/E,K44=Y/J,K45=Y/K,K46=Y/X,K47=Y/Y,K48=Y/Z )
      PARAMETER (
     1X11=Y+C,X12=Y+D,X13=Y+E,X14=Y+J,X15=Y+K,X16=Y+X,X17=Y+Y,X18=Y+Z,
     2X21=Y-C,X22=Y-D,X23=Y-E,X24=Y-J,X25=Y-K,X26=Y-X,X27=Y-Y,X28=Y-Z,
     3X31=Y*C,X32=Y*D,X33=Y*E,X34=Y*J,X35=Y*K,X36=Y*X,X37=Y*Y,X38=Y*Z,
     4X41=Y/C,X42=Y/D,X43=Y/E,X44=Y/J,X45=Y/K,X46=Y/X,X47=Y/Y,X48=Y/Z )
      PARAMETER (
     1Y11=Y+C,Y12=Y+D,Y13=Y+E,Y14=Y+J,Y15=Y+K,Y16=Y+X,Y17=Y+Y,Y18=Y+Z,
     2Y21=Y-C,Y22=Y-D,Y23=Y-E,Y24=Y-J,Y25=Y-K,Y26=Y-X,Y27=Y-Y,Y28=Y-Z,
     3Y31=Y*C,Y32=Y*D,Y33=Y*E,Y34=Y*J,Y35=Y*K,Y36=Y*X,Y37=Y*Y,Y38=Y*Z,
     4Y41=Y/C,Y42=Y/D,Y43=Y/E,Y44=Y/J,Y45=Y/K,Y46=Y/X,Y47=Y/Y,Y48=Y/Z )
      PARAMETER (
     1Z11=Y+C,Z12=Y+D,Z13=Y+E,Z14=Y+J,Z15=Y+K,Z16=Y+X,Z17=Y+Y,Z18=Y+Z,
     2Z21=Y-C,Z22=Y-D,Z23=Y-E,Z24=Y-J,Z25=Y-K,Z26=Y-X,Z27=Y-Y,Z28=Y-Z,
     3Z31=Y*C,Z32=Y*D,Z33=Y*E,Z34=Y*J,Z35=Y*K,Z36=Y*X,Z37=Y*Y,Z38=Y*Z,
     4Z41=Y/C,Z42=Y/D,Z43=Y/E,Z44=Y/J,Z45=Y/K,Z46=Y/X,Z47=Y/Y,Z48=Y/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = YQ+CQ
      CQ12 = YQ+DQ
      CQ13 = YQ+EQ
      CQ14 = YQ+JQ
      CQ15 = YQ+KQ
      CQ16 = YQ+XQ
      CQ17 = YQ+YQ
      CQ18 = YQ+ZQ
      CQ21 = YQ-CQ
      CQ22 = YQ-DQ
      CQ23 = YQ-EQ
      CQ24 = YQ-JQ
      CQ25 = YQ-KQ
      CQ26 = YQ-XQ
      CQ27 = YQ-YQ
      CQ28 = YQ-ZQ
      CQ31 = YQ*CQ
      CQ32 = YQ*DQ
      CQ33 = YQ*EQ
      CQ34 = YQ*JQ
      CQ35 = YQ*KQ
      CQ36 = YQ*XQ
      CQ37 = YQ*YQ
      CQ38 = YQ*ZQ
      CQ41 = YQ/CQ
      CQ42 = YQ/DQ
      CQ43 = YQ/EQ
      CQ44 = YQ/JQ
      CQ45 = YQ/KQ
      CQ46 = YQ/XQ
      CQ47 = YQ/YQ
      CQ48 = YQ/ZQ
      DQ11 = YQ+CQ
      DQ12 = YQ+DQ
      DQ13 = YQ+EQ
      DQ14 = YQ+JQ
      DQ15 = YQ+KQ
      DQ16 = YQ+XQ
      DQ17 = YQ+YQ
      DQ18 = YQ+ZQ
      DQ21 = YQ-CQ
      DQ22 = YQ-DQ
      DQ23 = YQ-EQ
      DQ24 = YQ-JQ
      DQ25 = YQ-KQ
      DQ26 = YQ-XQ
      DQ27 = YQ-YQ
      DQ28 = YQ-ZQ
      DQ31 = YQ*CQ
      DQ32 = YQ*DQ
      DQ33 = YQ*EQ
      DQ34 = YQ*JQ
      DQ35 = YQ*KQ
      DQ36 = YQ*XQ
      DQ37 = YQ*YQ
      DQ38 = YQ*ZQ
      DQ41 = YQ/CQ
      DQ42 = YQ/DQ
      DQ43 = YQ/EQ
      DQ44 = YQ/JQ
      DQ45 = YQ/KQ
      DQ46 = YQ/XQ
      DQ47 = YQ/YQ
      DQ48 = YQ/ZQ
      EQ11 = YQ+CQ
      EQ12 = YQ+DQ
      EQ13 = YQ+EQ
      EQ14 = YQ+JQ
      EQ15 = YQ+KQ
      EQ16 = YQ+XQ
      EQ17 = YQ+YQ
      EQ18 = YQ+ZQ
      EQ21 = YQ-CQ
      EQ22 = YQ-DQ
      EQ23 = YQ-EQ
      EQ24 = YQ-JQ
      EQ25 = YQ-KQ
      EQ26 = YQ-XQ
      EQ27 = YQ-YQ
      EQ28 = YQ-ZQ
      EQ31 = YQ*CQ
      EQ32 = YQ*DQ
      EQ33 = YQ*EQ
      EQ34 = YQ*JQ
      EQ35 = YQ*KQ
      EQ36 = YQ*XQ
      EQ37 = YQ*YQ
      EQ38 = YQ*ZQ
      EQ41 = YQ/CQ
      EQ42 = YQ/DQ
      EQ43 = YQ/EQ
      EQ44 = YQ/JQ
      EQ45 = YQ/KQ
      EQ46 = YQ/XQ
      EQ47 = YQ/YQ
      EQ48 = YQ/ZQ
      JQ11 = YQ+CQ
      JQ12 = YQ+DQ
      JQ13 = YQ+EQ
      JQ14 = YQ+JQ
      JQ15 = YQ+KQ
      JQ16 = YQ+XQ
      JQ17 = YQ+YQ
      JQ18 = YQ+ZQ
      JQ21 = YQ-CQ
      JQ22 = YQ-DQ
      JQ23 = YQ-EQ
      JQ24 = YQ-JQ
      JQ25 = YQ-KQ
      JQ26 = YQ-XQ
      JQ27 = YQ-YQ
      JQ28 = YQ-ZQ
      JQ31 = YQ*CQ
      JQ32 = YQ*DQ
      JQ33 = YQ*EQ
      JQ34 = YQ*JQ
      JQ35 = YQ*KQ
      JQ36 = YQ*XQ
      JQ37 = YQ*YQ
      JQ38 = YQ*ZQ
      JQ41 = YQ/CQ
      JQ42 = YQ/DQ
      JQ43 = YQ/EQ
      JQ44 = YQ/JQ
      JQ45 = YQ/KQ
      JQ46 = YQ/XQ
      JQ47 = YQ/YQ
      JQ48 = YQ/ZQ
      KQ11 = YQ+CQ
      KQ12 = YQ+DQ
      KQ13 = YQ+EQ
      KQ14 = YQ+JQ
      KQ15 = YQ+KQ
      KQ16 = YQ+XQ
      KQ17 = YQ+YQ
      KQ18 = YQ+ZQ
      KQ21 = YQ-CQ
      KQ22 = YQ-DQ
      KQ23 = YQ-EQ
      KQ24 = YQ-JQ
      KQ25 = YQ-KQ
      KQ26 = YQ-XQ
      KQ27 = YQ-YQ
      KQ28 = YQ-ZQ
      KQ31 = YQ*CQ
      KQ32 = YQ*DQ
      KQ33 = YQ*EQ
      KQ34 = YQ*JQ
      KQ35 = YQ*KQ
      KQ36 = YQ*XQ
      KQ37 = YQ*YQ
      KQ38 = YQ*ZQ
      KQ41 = YQ/CQ
      KQ42 = YQ/DQ
      KQ43 = YQ/EQ
      KQ44 = YQ/JQ
      KQ45 = YQ/KQ
      KQ46 = YQ/XQ
      KQ47 = YQ/YQ
      KQ48 = YQ/ZQ
      XQ11 = YQ+CQ
      XQ12 = YQ+DQ
      XQ13 = YQ+EQ
      XQ14 = YQ+JQ
      XQ15 = YQ+KQ
      XQ16 = YQ+XQ
      XQ17 = YQ+YQ
      XQ18 = YQ+ZQ
      XQ21 = YQ-CQ
      XQ22 = YQ-DQ
      XQ23 = YQ-EQ
      XQ24 = YQ-JQ
      XQ25 = YQ-KQ
      XQ26 = YQ-XQ
      XQ27 = YQ-YQ
      XQ28 = YQ-ZQ
      XQ31 = YQ*CQ
      XQ32 = YQ*DQ
      XQ33 = YQ*EQ
      XQ34 = YQ*JQ
      XQ35 = YQ*KQ
      XQ36 = YQ*XQ
      XQ37 = YQ*YQ
      XQ38 = YQ*ZQ
      XQ41 = YQ/CQ
      XQ42 = YQ/DQ
      XQ43 = YQ/EQ
      XQ44 = YQ/JQ
      XQ45 = YQ/KQ
      XQ46 = YQ/XQ
      XQ47 = YQ/YQ
      XQ48 = YQ/ZQ
      YQ11 = YQ+CQ
      YQ12 = YQ+DQ
      YQ13 = YQ+EQ
      YQ14 = YQ+JQ
      YQ15 = YQ+KQ
      YQ16 = YQ+XQ
      YQ17 = YQ+YQ
      YQ18 = YQ+ZQ
      YQ21 = YQ-CQ
      YQ22 = YQ-DQ
      YQ23 = YQ-EQ
      YQ24 = YQ-JQ
      YQ25 = YQ-KQ
      YQ26 = YQ-XQ
      YQ27 = YQ-YQ
      YQ28 = YQ-ZQ
      YQ31 = YQ*CQ
      YQ32 = YQ*DQ
      YQ33 = YQ*EQ
      YQ34 = YQ*JQ
      YQ35 = YQ*KQ
      YQ36 = YQ*XQ
      YQ37 = YQ*YQ
      YQ38 = YQ*ZQ
      YQ41 = YQ/CQ
      YQ42 = YQ/DQ
      YQ43 = YQ/EQ
      YQ44 = YQ/JQ
      YQ45 = YQ/KQ
      YQ46 = YQ/XQ
      YQ47 = YQ/YQ
      YQ48 = YQ/ZQ
      ZQ11 = YQ+CQ
      ZQ12 = YQ+DQ
      ZQ13 = YQ+EQ
      ZQ14 = YQ+JQ
      ZQ15 = YQ+KQ
      ZQ16 = YQ+XQ
      ZQ17 = YQ+YQ
      ZQ18 = YQ+ZQ
      ZQ21 = YQ-CQ
      ZQ22 = YQ-DQ
      ZQ23 = YQ-EQ
      ZQ24 = YQ-JQ
      ZQ25 = YQ-KQ
      ZQ26 = YQ-XQ
      ZQ27 = YQ-YQ
      ZQ28 = YQ-ZQ
      ZQ31 = YQ*CQ
      ZQ32 = YQ*DQ
      ZQ33 = YQ*EQ
      ZQ34 = YQ*JQ
      ZQ35 = YQ*KQ
      ZQ36 = YQ*XQ
      ZQ37 = YQ*YQ
      ZQ38 = YQ*ZQ
      ZQ41 = YQ/CQ
      ZQ42 = YQ/DQ
      ZQ43 = YQ/EQ
      ZQ44 = YQ/JQ
      ZQ45 = YQ/KQ
      ZQ46 = YQ/XQ
      ZQ47 = YQ/YQ
      ZQ48 = YQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND Y +-*/ '
      END
      SUBROUTINE CHECK         Z
      IMPLICIT COMPLEX*8 (C),COMPLEX*16 (D),COMPLEX*32 (E)
      IMPLICIT INTEGER*2 (J),INTEGER*8  (K)
      IMPLICIT REAL*4    (X),REAL*8     (Y),REAL*16    (Z)
      PARAMETER (C  = (3.0,4.0) , D =(3.D0,4.D0),E=(3.Q0,4.Q0) )
      PARAMETER (J  = 3         , K =4                         )
      PARAMETER (X  = 3.0       , Y = 4.D0      ,Z=5.Q0        )
      PARAMETER (
     1C11=Z+C,C12=Z+D,C13=Z+E,C14=Z+J,C15=Z+K,C16=Z+X,C17=Z+Y,C18=Z+Z,
     2C21=Z-C,C22=Z-D,C23=Z-E,C24=Z-J,C25=Z-K,C26=Z-X,C27=Z-Y,C28=Z-Z,
     3C31=Z*C,C32=Z*D,C33=Z*E,C34=Z*J,C35=Z*K,C36=Z*X,C37=Z*Y,C38=Z*Z,
     4C41=Z/C,C42=Z/D,C43=Z/E,C44=Z/J,C45=Z/K,C46=Z/X,C47=Z/Y,C48=Z/Z )
      PARAMETER (
     1D11=Z+C,D12=Z+D,D13=Z+E,D14=Z+J,D15=Z+K,D16=Z+X,D17=Z+Y,D18=Z+Z,
     2D21=Z-C,D22=Z-D,D23=Z-E,D24=Z-J,D25=Z-K,D26=Z-X,D27=Z-Y,D28=Z-Z,
     3D31=Z*C,D32=Z*D,D33=Z*E,D34=Z*J,D35=Z*K,D36=Z*X,D37=Z*Y,D38=Z*Z,
     4D41=Z/C,D42=Z/D,D43=Z/E,D44=Z/J,D45=Z/K,D46=Z/X,D47=Z/Y,D48=Z/Z )
      PARAMETER (
     1E11=Z+C,E12=Z+D,E13=Z+E,E14=Z+J,E15=Z+K,E16=Z+X,E17=Z+Y,E18=Z+Z,
     2E21=Z-C,E22=Z-D,E23=Z-E,E24=Z-J,E25=Z-K,E26=Z-X,E27=Z-Y,E28=Z-Z,
     3E31=Z*C,E32=Z*D,E33=Z*E,E34=Z*J,E35=Z*K,E36=Z*X,E37=Z*Y,E38=Z*Z,
     4E41=Z/C,E42=Z/D,E43=Z/E,E44=Z/J,E45=Z/K,E46=Z/X,E47=Z/Y,E48=Z/Z )
      PARAMETER (
     1J11=Z+C,J12=Z+D,J13=Z+E,J14=Z+J,J15=Z+K,J16=Z+X,J17=Z+Y,J18=Z+Z,
     2J21=Z-C,J22=Z-D,J23=Z-E,J24=Z-J,J25=Z-K,J26=Z-X,J27=Z-Y,J28=Z-Z,
     3J31=Z*C,J32=Z*D,J33=Z*E,J34=Z*J,J35=Z*K,J36=Z*X,J37=Z*Y,J38=Z*Z,
     4J41=Z/C,J42=Z/D,J43=Z/E,J44=Z/J,J45=Z/K,J46=Z/X,J47=Z/Y,J48=Z/Z )
      PARAMETER (
     1K11=Z+C,K12=Z+D,K13=Z+E,K14=Z+J,K15=Z+K,K16=Z+X,K17=Z+Y,K18=Z+Z,
     2K21=Z-C,K22=Z-D,K23=Z-E,K24=Z-J,K25=Z-K,K26=Z-X,K27=Z-Y,K28=Z-Z,
     3K31=Z*C,K32=Z*D,K33=Z*E,K34=Z*J,K35=Z*K,K36=Z*X,K37=Z*Y,K38=Z*Z,
     4K41=Z/C,K42=Z/D,K43=Z/E,K44=Z/J,K45=Z/K,K46=Z/X,K47=Z/Y,K48=Z/Z )
      PARAMETER (
     1X11=Z+C,X12=Z+D,X13=Z+E,X14=Z+J,X15=Z+K,X16=Z+X,X17=Z+Y,X18=Z+Z,
     2X21=Z-C,X22=Z-D,X23=Z-E,X24=Z-J,X25=Z-K,X26=Z-X,X27=Z-Y,X28=Z-Z,
     3X31=Z*C,X32=Z*D,X33=Z*E,X34=Z*J,X35=Z*K,X36=Z*X,X37=Z*Y,X38=Z*Z,
     4X41=Z/C,X42=Z/D,X43=Z/E,X44=Z/J,X45=Z/K,X46=Z/X,X47=Z/Y,X48=Z/Z )
      PARAMETER (
     1Y11=Z+C,Y12=Z+D,Y13=Z+E,Y14=Z+J,Y15=Z+K,Y16=Z+X,Y17=Z+Y,Y18=Z+Z,
     2Y21=Z-C,Y22=Z-D,Y23=Z-E,Y24=Z-J,Y25=Z-K,Y26=Z-X,Y27=Z-Y,Y28=Z-Z,
     3Y31=Z*C,Y32=Z*D,Y33=Z*E,Y34=Z*J,Y35=Z*K,Y36=Z*X,Y37=Z*Y,Y38=Z*Z,
     4Y41=Z/C,Y42=Z/D,Y43=Z/E,Y44=Z/J,Y45=Z/K,Y46=Z/X,Y47=Z/Y,Y48=Z/Z )
      PARAMETER (
     1Z11=Z+C,Z12=Z+D,Z13=Z+E,Z14=Z+J,Z15=Z+K,Z16=Z+X,Z17=Z+Y,Z18=Z+Z,
     2Z21=Z-C,Z22=Z-D,Z23=Z-E,Z24=Z-J,Z25=Z-K,Z26=Z-X,Z27=Z-Y,Z28=Z-Z,
     3Z31=Z*C,Z32=Z*D,Z33=Z*E,Z34=Z*J,Z35=Z*K,Z36=Z*X,Z37=Z*Y,Z38=Z*Z,
     4Z41=Z/C,Z42=Z/D,Z43=Z/E,Z44=Z/J,Z45=Z/K,Z46=Z/X,Z47=Z/Y,Z48=Z/Z )
      CQ = (3.0,4.0)
      DQ = (3.D0,4.D0)
      EQ = (3.Q0,4.Q0)
      JQ = 3
      KQ = 4
      XQ = 3.0
      YQ = 4.D0
      ZQ = 5.Q0
      CQ11 = ZQ+CQ
      CQ12 = ZQ+DQ
      CQ13 = ZQ+EQ
      CQ14 = ZQ+JQ
      CQ15 = ZQ+KQ
      CQ16 = ZQ+XQ
      CQ17 = ZQ+YQ
      CQ18 = ZQ+ZQ
      CQ21 = ZQ-CQ
      CQ22 = ZQ-DQ
      CQ23 = ZQ-EQ
      CQ24 = ZQ-JQ
      CQ25 = ZQ-KQ
      CQ26 = ZQ-XQ
      CQ27 = ZQ-YQ
      CQ28 = ZQ-ZQ
      CQ31 = ZQ*CQ
      CQ32 = ZQ*DQ
      CQ33 = ZQ*EQ
      CQ34 = ZQ*JQ
      CQ35 = ZQ*KQ
      CQ36 = ZQ*XQ
      CQ37 = ZQ*YQ
      CQ38 = ZQ*ZQ
      CQ41 = ZQ/CQ
      CQ42 = ZQ/DQ
      CQ43 = ZQ/EQ
      CQ44 = ZQ/JQ
      CQ45 = ZQ/KQ
      CQ46 = ZQ/XQ
      CQ47 = ZQ/YQ
      CQ48 = ZQ/ZQ
      DQ11 = ZQ+CQ
      DQ12 = ZQ+DQ
      DQ13 = ZQ+EQ
      DQ14 = ZQ+JQ
      DQ15 = ZQ+KQ
      DQ16 = ZQ+XQ
      DQ17 = ZQ+YQ
      DQ18 = ZQ+ZQ
      DQ21 = ZQ-CQ
      DQ22 = ZQ-DQ
      DQ23 = ZQ-EQ
      DQ24 = ZQ-JQ
      DQ25 = ZQ-KQ
      DQ26 = ZQ-XQ
      DQ27 = ZQ-YQ
      DQ28 = ZQ-ZQ
      DQ31 = ZQ*CQ
      DQ32 = ZQ*DQ
      DQ33 = ZQ*EQ
      DQ34 = ZQ*JQ
      DQ35 = ZQ*KQ
      DQ36 = ZQ*XQ
      DQ37 = ZQ*YQ
      DQ38 = ZQ*ZQ
      DQ41 = ZQ/CQ
      DQ42 = ZQ/DQ
      DQ43 = ZQ/EQ
      DQ44 = ZQ/JQ
      DQ45 = ZQ/KQ
      DQ46 = ZQ/XQ
      DQ47 = ZQ/YQ
      DQ48 = ZQ/ZQ
      EQ11 = ZQ+CQ
      EQ12 = ZQ+DQ
      EQ13 = ZQ+EQ
      EQ14 = ZQ+JQ
      EQ15 = ZQ+KQ
      EQ16 = ZQ+XQ
      EQ17 = ZQ+YQ
      EQ18 = ZQ+ZQ
      EQ21 = ZQ-CQ
      EQ22 = ZQ-DQ
      EQ23 = ZQ-EQ
      EQ24 = ZQ-JQ
      EQ25 = ZQ-KQ
      EQ26 = ZQ-XQ
      EQ27 = ZQ-YQ
      EQ28 = ZQ-ZQ
      EQ31 = ZQ*CQ
      EQ32 = ZQ*DQ
      EQ33 = ZQ*EQ
      EQ34 = ZQ*JQ
      EQ35 = ZQ*KQ
      EQ36 = ZQ*XQ
      EQ37 = ZQ*YQ
      EQ38 = ZQ*ZQ
      EQ41 = ZQ/CQ
      EQ42 = ZQ/DQ
      EQ43 = ZQ/EQ
      EQ44 = ZQ/JQ
      EQ45 = ZQ/KQ
      EQ46 = ZQ/XQ
      EQ47 = ZQ/YQ
      EQ48 = ZQ/ZQ
      JQ11 = ZQ+CQ
      JQ12 = ZQ+DQ
      JQ13 = ZQ+EQ
      JQ14 = ZQ+JQ
      JQ15 = ZQ+KQ
      JQ16 = ZQ+XQ
      JQ17 = ZQ+YQ
      JQ18 = ZQ+ZQ
      JQ21 = ZQ-CQ
      JQ22 = ZQ-DQ
      JQ23 = ZQ-EQ
      JQ24 = ZQ-JQ
      JQ25 = ZQ-KQ
      JQ26 = ZQ-XQ
      JQ27 = ZQ-YQ
      JQ28 = ZQ-ZQ
      JQ31 = ZQ*CQ
      JQ32 = ZQ*DQ
      JQ33 = ZQ*EQ
      JQ34 = ZQ*JQ
      JQ35 = ZQ*KQ
      JQ36 = ZQ*XQ
      JQ37 = ZQ*YQ
      JQ38 = ZQ*ZQ
      JQ41 = ZQ/CQ
      JQ42 = ZQ/DQ
      JQ43 = ZQ/EQ
      JQ44 = ZQ/JQ
      JQ45 = ZQ/KQ
      JQ46 = ZQ/XQ
      JQ47 = ZQ/YQ
      JQ48 = ZQ/ZQ
      KQ11 = ZQ+CQ
      KQ12 = ZQ+DQ
      KQ13 = ZQ+EQ
      KQ14 = ZQ+JQ
      KQ15 = ZQ+KQ
      KQ16 = ZQ+XQ
      KQ17 = ZQ+YQ
      KQ18 = ZQ+ZQ
      KQ21 = ZQ-CQ
      KQ22 = ZQ-DQ
      KQ23 = ZQ-EQ
      KQ24 = ZQ-JQ
      KQ25 = ZQ-KQ
      KQ26 = ZQ-XQ
      KQ27 = ZQ-YQ
      KQ28 = ZQ-ZQ
      KQ31 = ZQ*CQ
      KQ32 = ZQ*DQ
      KQ33 = ZQ*EQ
      KQ34 = ZQ*JQ
      KQ35 = ZQ*KQ
      KQ36 = ZQ*XQ
      KQ37 = ZQ*YQ
      KQ38 = ZQ*ZQ
      KQ41 = ZQ/CQ
      KQ42 = ZQ/DQ
      KQ43 = ZQ/EQ
      KQ44 = ZQ/JQ
      KQ45 = ZQ/KQ
      KQ46 = ZQ/XQ
      KQ47 = ZQ/YQ
      KQ48 = ZQ/ZQ
      XQ11 = ZQ+CQ
      XQ12 = ZQ+DQ
      XQ13 = ZQ+EQ
      XQ14 = ZQ+JQ
      XQ15 = ZQ+KQ
      XQ16 = ZQ+XQ
      XQ17 = ZQ+YQ
      XQ18 = ZQ+ZQ
      XQ21 = ZQ-CQ
      XQ22 = ZQ-DQ
      XQ23 = ZQ-EQ
      XQ24 = ZQ-JQ
      XQ25 = ZQ-KQ
      XQ26 = ZQ-XQ
      XQ27 = ZQ-YQ
      XQ28 = ZQ-ZQ
      XQ31 = ZQ*CQ
      XQ32 = ZQ*DQ
      XQ33 = ZQ*EQ
      XQ34 = ZQ*JQ
      XQ35 = ZQ*KQ
      XQ36 = ZQ*XQ
      XQ37 = ZQ*YQ
      XQ38 = ZQ*ZQ
      XQ41 = ZQ/CQ
      XQ42 = ZQ/DQ
      XQ43 = ZQ/EQ
      XQ44 = ZQ/JQ
      XQ45 = ZQ/KQ
      XQ46 = ZQ/XQ
      XQ47 = ZQ/YQ
      XQ48 = ZQ/ZQ
      YQ11 = ZQ+CQ
      YQ12 = ZQ+DQ
      YQ13 = ZQ+EQ
      YQ14 = ZQ+JQ
      YQ15 = ZQ+KQ
      YQ16 = ZQ+XQ
      YQ17 = ZQ+YQ
      YQ18 = ZQ+ZQ
      YQ21 = ZQ-CQ
      YQ22 = ZQ-DQ
      YQ23 = ZQ-EQ
      YQ24 = ZQ-JQ
      YQ25 = ZQ-KQ
      YQ26 = ZQ-XQ
      YQ27 = ZQ-YQ
      YQ28 = ZQ-ZQ
      YQ31 = ZQ*CQ
      YQ32 = ZQ*DQ
      YQ33 = ZQ*EQ
      YQ34 = ZQ*JQ
      YQ35 = ZQ*KQ
      YQ36 = ZQ*XQ
      YQ37 = ZQ*YQ
      YQ38 = ZQ*ZQ
      YQ41 = ZQ/CQ
      YQ42 = ZQ/DQ
      YQ43 = ZQ/EQ
      YQ44 = ZQ/JQ
      YQ45 = ZQ/KQ
      YQ46 = ZQ/XQ
      YQ47 = ZQ/YQ
      YQ48 = ZQ/ZQ
      ZQ11 = ZQ+CQ
      ZQ12 = ZQ+DQ
      ZQ13 = ZQ+EQ
      ZQ14 = ZQ+JQ
      ZQ15 = ZQ+KQ
      ZQ16 = ZQ+XQ
      ZQ17 = ZQ+YQ
      ZQ18 = ZQ+ZQ
      ZQ21 = ZQ-CQ
      ZQ22 = ZQ-DQ
      ZQ23 = ZQ-EQ
      ZQ24 = ZQ-JQ
      ZQ25 = ZQ-KQ
      ZQ26 = ZQ-XQ
      ZQ27 = ZQ-YQ
      ZQ28 = ZQ-ZQ
      ZQ31 = ZQ*CQ
      ZQ32 = ZQ*DQ
      ZQ33 = ZQ*EQ
      ZQ34 = ZQ*JQ
      ZQ35 = ZQ*KQ
      ZQ36 = ZQ*XQ
      ZQ37 = ZQ*YQ
      ZQ38 = ZQ*ZQ
      ZQ41 = ZQ/CQ
      ZQ42 = ZQ/DQ
      ZQ43 = ZQ/EQ
      ZQ44 = ZQ/JQ
      ZQ45 = ZQ/KQ
      ZQ46 = ZQ/XQ
      ZQ47 = ZQ/YQ
      ZQ48 = ZQ/ZQ
      IF (C   .NE.  CQ  ) PRINT *,'FAIL'
      IF (D   .NE.  DQ  ) PRINT *,'FAIL'
      IF (E   .NE.  EQ  ) PRINT *,'FAIL'
      IF (J   .NE.  JQ  ) PRINT *,'FAIL'
      IF (K   .NE.  KQ  ) PRINT *,'FAIL'
      IF (X   .NE.  XQ  ) PRINT *,'FAIL'
      IF (Y   .NE.  YQ  ) PRINT *,'FAIL'
      IF (Z   .NE.  ZQ  ) PRINT *,'FAIL'
      IF (C11 .NE.  CQ11) PRINT *,'FAIL'
      IF (D11 .NE.  DQ11) PRINT *,'FAIL'
      IF (E11 .NE.  EQ11) PRINT *,'FAIL'
      IF (J11 .NE.  JQ11) PRINT *,'FAIL'
      IF (K11 .NE.  KQ11) PRINT *,'FAIL'
      IF (X11 .NE.  XQ11) PRINT *,'FAIL'
      IF (Y11 .NE.  YQ11) PRINT *,'FAIL'
      IF (Z11 .NE.  ZQ11) PRINT *,'FAIL'
      IF (C12 .NE.  CQ12) PRINT *,'FAIL'
      IF (D12 .NE.  DQ12) PRINT *,'FAIL'
      IF (E12 .NE.  EQ12) PRINT *,'FAIL'
      IF (J12 .NE.  JQ12) PRINT *,'FAIL'
      IF (K12 .NE.  KQ12) PRINT *,'FAIL'
      IF (X12 .NE.  XQ12) PRINT *,'FAIL'
      IF (Y12 .NE.  YQ12) PRINT *,'FAIL'
      IF (Z12 .NE.  ZQ12) PRINT *,'FAIL'
      IF (C13 .NE.  CQ13) PRINT *,'FAIL'
      IF (D13 .NE.  DQ13) PRINT *,'FAIL'
      IF (E13 .NE.  EQ13) PRINT *,'FAIL'
      IF (J13 .NE.  JQ13) PRINT *,'FAIL'
      IF (K13 .NE.  KQ13) PRINT *,'FAIL'
      IF (X13 .NE.  XQ13) PRINT *,'FAIL'
      IF (Y13 .NE.  YQ13) PRINT *,'FAIL'
      IF (Z13 .NE.  ZQ13) PRINT *,'FAIL'
      IF (C14 .NE.  CQ14) PRINT *,'FAIL'
      IF (D14 .NE.  DQ14) PRINT *,'FAIL'
      IF (E14 .NE.  EQ14) PRINT *,'FAIL'
      IF (J14 .NE.  JQ14) PRINT *,'FAIL'
      IF (K14 .NE.  KQ14) PRINT *,'FAIL'
      IF (X14 .NE.  XQ14) PRINT *,'FAIL'
      IF (Y14 .NE.  YQ14) PRINT *,'FAIL'
      IF (Z14 .NE.  ZQ14) PRINT *,'FAIL'
      IF (C15 .NE.  CQ15) PRINT *,'FAIL'
      IF (D15 .NE.  DQ15) PRINT *,'FAIL'
      IF (E15 .NE.  EQ15) PRINT *,'FAIL'
      IF (J15 .NE.  JQ15) PRINT *,'FAIL'
      IF (K15 .NE.  KQ15) PRINT *,'FAIL'
      IF (X15 .NE.  XQ15) PRINT *,'FAIL'
      IF (Y15 .NE.  YQ15) PRINT *,'FAIL'
      IF (Z15 .NE.  ZQ15) PRINT *,'FAIL'
      IF (C16 .NE.  CQ16) PRINT *,'FAIL'
      IF (D16 .NE.  DQ16) PRINT *,'FAIL'
      IF (E16 .NE.  EQ16) PRINT *,'FAIL'
      IF (J16 .NE.  JQ16) PRINT *,'FAIL'
      IF (K16 .NE.  KQ16) PRINT *,'FAIL'
      IF (X16 .NE.  XQ16) PRINT *,'FAIL'
      IF (Y16 .NE.  YQ16) PRINT *,'FAIL'
      IF (Z16 .NE.  ZQ16) PRINT *,'FAIL'
      IF (C17 .NE.  CQ17) PRINT *,'FAIL'
      IF (D17 .NE.  DQ17) PRINT *,'FAIL'
      IF (E17 .NE.  EQ17) PRINT *,'FAIL'
      IF (J17 .NE.  JQ17) PRINT *,'FAIL'
      IF (K17 .NE.  KQ17) PRINT *,'FAIL'
      IF (X17 .NE.  XQ17) PRINT *,'FAIL'
      IF (Y17 .NE.  YQ17) PRINT *,'FAIL'
      IF (Z17 .NE.  ZQ17) PRINT *,'FAIL'
      IF (C18 .NE.  CQ18) PRINT *,'FAIL'
      IF (D18 .NE.  DQ18) PRINT *,'FAIL'
      IF (E18 .NE.  EQ18) PRINT *,'FAIL'
      IF (J18 .NE.  JQ18) PRINT *,'FAIL'
      IF (K18 .NE.  KQ18) PRINT *,'FAIL'
      IF (X18 .NE.  XQ18) PRINT *,'FAIL'
      IF (Y18 .NE.  YQ18) PRINT *,'FAIL'
      IF (Z18 .NE.  ZQ18) PRINT *,'FAIL'
      IF (C21 .NE.  CQ21) PRINT *,'FAIL'
      IF (D21 .NE.  DQ21) PRINT *,'FAIL'
      IF (E21 .NE.  EQ21) PRINT *,'FAIL'
      IF (J21 .NE.  JQ21) PRINT *,'FAIL'
      IF (K21 .NE.  KQ21) PRINT *,'FAIL'
      IF (X21 .NE.  XQ21) PRINT *,'FAIL'
      IF (Y21 .NE.  YQ21) PRINT *,'FAIL'
      IF (Z21 .NE.  ZQ21) PRINT *,'FAIL'
      IF (C22 .NE.  CQ22) PRINT *,'FAIL'
      IF (D22 .NE.  DQ22) PRINT *,'FAIL'
      IF (E22 .NE.  EQ22) PRINT *,'FAIL'
      IF (J22 .NE.  JQ22) PRINT *,'FAIL'
      IF (K22 .NE.  KQ22) PRINT *,'FAIL'
      IF (X22 .NE.  XQ22) PRINT *,'FAIL'
      IF (Y22 .NE.  YQ22) PRINT *,'FAIL'
      IF (Z22 .NE.  ZQ22) PRINT *,'FAIL'
      IF (C23 .NE.  CQ23) PRINT *,'FAIL'
      IF (D23 .NE.  DQ23) PRINT *,'FAIL'
      IF (E23 .NE.  EQ23) PRINT *,'FAIL'
      IF (J23 .NE.  JQ23) PRINT *,'FAIL'
      IF (K23 .NE.  KQ23) PRINT *,'FAIL'
      IF (X23 .NE.  XQ23) PRINT *,'FAIL'
      IF (Y23 .NE.  YQ23) PRINT *,'FAIL'
      IF (Z23 .NE.  ZQ23) PRINT *,'FAIL'
      IF (C24 .NE.  CQ24) PRINT *,'FAIL'
      IF (D24 .NE.  DQ24) PRINT *,'FAIL'
      IF (E24 .NE.  EQ24) PRINT *,'FAIL'
      IF (J24 .NE.  JQ24) PRINT *,'FAIL'
      IF (K24 .NE.  KQ24) PRINT *,'FAIL'
      IF (X24 .NE.  XQ24) PRINT *,'FAIL'
      IF (Y24 .NE.  YQ24) PRINT *,'FAIL'
      IF (Z24 .NE.  ZQ24) PRINT *,'FAIL'
      IF (C25 .NE.  CQ25) PRINT *,'FAIL'
      IF (D25 .NE.  DQ25) PRINT *,'FAIL'
      IF (E25 .NE.  EQ25) PRINT *,'FAIL'
      IF (J25 .NE.  JQ25) PRINT *,'FAIL'
      IF (K25 .NE.  KQ25) PRINT *,'FAIL'
      IF (X25 .NE.  XQ25) PRINT *,'FAIL'
      IF (Y25 .NE.  YQ25) PRINT *,'FAIL'
      IF (Z25 .NE.  ZQ25) PRINT *,'FAIL'
      IF (C26 .NE.  CQ26) PRINT *,'FAIL'
      IF (D26 .NE.  DQ26) PRINT *,'FAIL'
      IF (E26 .NE.  EQ26) PRINT *,'FAIL'
      IF (J26 .NE.  JQ26) PRINT *,'FAIL'
      IF (K26 .NE.  KQ26) PRINT *,'FAIL'
      IF (X26 .NE.  XQ26) PRINT *,'FAIL'
      IF (Y26 .NE.  YQ26) PRINT *,'FAIL'
      IF (Z26 .NE.  ZQ26) PRINT *,'FAIL'
      IF (C27 .NE.  CQ27) PRINT *,'FAIL'
      IF (D27 .NE.  DQ27) PRINT *,'FAIL'
      IF (E27 .NE.  EQ27) PRINT *,'FAIL'
      IF (J27 .NE.  JQ27) PRINT *,'FAIL'
      IF (K27 .NE.  KQ27) PRINT *,'FAIL'
      IF (X27 .NE.  XQ27) PRINT *,'FAIL'
      IF (Y27 .NE.  YQ27) PRINT *,'FAIL'
      IF (Z27 .NE.  ZQ27) PRINT *,'FAIL'
      IF (C28 .NE.  CQ28) PRINT *,'FAIL'
      IF (D28 .NE.  DQ28) PRINT *,'FAIL'
      IF (E28 .NE.  EQ28) PRINT *,'FAIL'
      IF (J28 .NE.  JQ28) PRINT *,'FAIL'
      IF (K28 .NE.  KQ28) PRINT *,'FAIL'
      IF (X28 .NE.  XQ28) PRINT *,'FAIL'
      IF (Y28 .NE.  YQ28) PRINT *,'FAIL'
      IF (Z28 .NE.  ZQ28) PRINT *,'FAIL'
      IF (C31 .NE.  CQ31) PRINT *,'FAIL'
      IF (D31 .NE.  DQ31) PRINT *,'FAIL'
      IF (E31 .NE.  EQ31) PRINT *,'FAIL'
      IF (J31 .NE.  JQ31) PRINT *,'FAIL'
      IF (K31 .NE.  KQ31) PRINT *,'FAIL'
      IF (X31 .NE.  XQ31) PRINT *,'FAIL'
      IF (Y31 .NE.  YQ31) PRINT *,'FAIL'
      IF (Z31 .NE.  ZQ31) PRINT *,'FAIL'
      IF (C32 .NE.  CQ32) PRINT *,'FAIL'
      IF (D32 .NE.  DQ32) PRINT *,'FAIL'
      IF (E32 .NE.  EQ32) PRINT *,'FAIL'
      IF (J32 .NE.  JQ32) PRINT *,'FAIL'
      IF (K32 .NE.  KQ32) PRINT *,'FAIL'
      IF (X32 .NE.  XQ32) PRINT *,'FAIL'
      IF (Y32 .NE.  YQ32) PRINT *,'FAIL'
      IF (Z32 .NE.  ZQ32) PRINT *,'FAIL'
      IF (C33 .NE.  CQ33) PRINT *,'FAIL'
      IF (D33 .NE.  DQ33) PRINT *,'FAIL'
      IF (E33 .NE.  EQ33) PRINT *,'FAIL'
      IF (J33 .NE.  JQ33) PRINT *,'FAIL'
      IF (K33 .NE.  KQ33) PRINT *,'FAIL'
      IF (X33 .NE.  XQ33) PRINT *,'FAIL'
      IF (Y33 .NE.  YQ33) PRINT *,'FAIL'
      IF (Z33 .NE.  ZQ33) PRINT *,'FAIL'
      IF (C34 .NE.  CQ34) PRINT *,'FAIL'
      IF (D34 .NE.  DQ34) PRINT *,'FAIL'
      IF (E34 .NE.  EQ34) PRINT *,'FAIL'
      IF (J34 .NE.  JQ34) PRINT *,'FAIL'
      IF (K34 .NE.  KQ34) PRINT *,'FAIL'
      IF (X34 .NE.  XQ34) PRINT *,'FAIL'
      IF (Y34 .NE.  YQ34) PRINT *,'FAIL'
      IF (Z34 .NE.  ZQ34) PRINT *,'FAIL'
      IF (C35 .NE.  CQ35) PRINT *,'FAIL'
      IF (D35 .NE.  DQ35) PRINT *,'FAIL'
      IF (E35 .NE.  EQ35) PRINT *,'FAIL'
      IF (J35 .NE.  JQ35) PRINT *,'FAIL'
      IF (K35 .NE.  KQ35) PRINT *,'FAIL'
      IF (X35 .NE.  XQ35) PRINT *,'FAIL'
      IF (Y35 .NE.  YQ35) PRINT *,'FAIL'
      IF (Z35 .NE.  ZQ35) PRINT *,'FAIL'
      IF (C36 .NE.  CQ36) PRINT *,'FAIL'
      IF (D36 .NE.  DQ36) PRINT *,'FAIL'
      IF (E36 .NE.  EQ36) PRINT *,'FAIL'
      IF (J36 .NE.  JQ36) PRINT *,'FAIL'
      IF (K36 .NE.  KQ36) PRINT *,'FAIL'
      IF (X36 .NE.  XQ36) PRINT *,'FAIL'
      IF (Y36 .NE.  YQ36) PRINT *,'FAIL'
      IF (Z36 .NE.  ZQ36) PRINT *,'FAIL'
      IF (C37 .NE.  CQ37) PRINT *,'FAIL'
      IF (D37 .NE.  DQ37) PRINT *,'FAIL'
      IF (E37 .NE.  EQ37) PRINT *,'FAIL'
      IF (J37 .NE.  JQ37) PRINT *,'FAIL'
      IF (K37 .NE.  KQ37) PRINT *,'FAIL'
      IF (X37 .NE.  XQ37) PRINT *,'FAIL'
      IF (Y37 .NE.  YQ37) PRINT *,'FAIL'
      IF (Z37 .NE.  ZQ37) PRINT *,'FAIL'
      IF (C38 .NE.  CQ38) PRINT *,'FAIL'
      IF (D38 .NE.  DQ38) PRINT *,'FAIL'
      IF (E38 .NE.  EQ38) PRINT *,'FAIL'
      IF (J38 .NE.  JQ38) PRINT *,'FAIL'
      IF (K38 .NE.  KQ38) PRINT *,'FAIL'
      IF (X38 .NE.  XQ38) PRINT *,'FAIL'
      IF (Y38 .NE.  YQ38) PRINT *,'FAIL'
      IF (Z38 .NE.  ZQ38) PRINT *,'FAIL'
      IF (C41 .NE.  CQ41) PRINT *,'FAIL'
      IF (D41 .NE.  DQ41) PRINT *,'FAIL'
      IF (E41 .NE.  EQ41) PRINT *,'FAIL'
      IF (J41 .NE.  JQ41) PRINT *,'FAIL'
      IF (K41 .NE.  KQ41) PRINT *,'FAIL'
      IF (X41 .NE.  XQ41) PRINT *,'FAIL'
      IF (Y41 .NE.  YQ41) PRINT *,'FAIL'
      IF (Z41 .NE.  ZQ41) PRINT *,'FAIL'
      IF (C42 .NE.  CQ42) PRINT *,'FAIL'
      IF (D42 .NE.  DQ42) PRINT *,'FAIL'
      IF (E42 .NE.  EQ42) PRINT *,'FAIL'
      IF (J42 .NE.  JQ42) PRINT *,'FAIL'
      IF (K42 .NE.  KQ42) PRINT *,'FAIL'
      IF (X42 .NE.  XQ42) PRINT *,'FAIL'
      IF (Y42 .NE.  YQ42) PRINT *,'FAIL'
      IF (Z42 .NE.  ZQ42) PRINT *,'FAIL'
      IF (C43 .NE.  CQ43) PRINT *,'FAIL'
      IF (D43 .NE.  DQ43) PRINT *,'FAIL'
      IF (E43 .NE.  EQ43) PRINT *,'FAIL'
      IF (J43 .NE.  JQ43) PRINT *,'FAIL'
      IF (K43 .NE.  KQ43) PRINT *,'FAIL'
      IF (X43 .NE.  XQ43) PRINT *,'FAIL'
      IF (Y43 .NE.  YQ43) PRINT *,'FAIL'
      IF (Z43 .NE.  ZQ43) PRINT *,'FAIL'
      IF (C44 .NE.  CQ44) PRINT *,'FAIL'
      IF (D44 .NE.  DQ44) PRINT *,'FAIL'
      IF (E44 .NE.  EQ44) PRINT *,'FAIL'
      IF (J44 .NE.  JQ44) PRINT *,'FAIL'
      IF (K44 .NE.  KQ44) PRINT *,'FAIL'
      IF (X44 .NE.  XQ44) PRINT *,'FAIL'
      IF (Y44 .NE.  YQ44) PRINT *,'FAIL'
      IF (Z44 .NE.  ZQ44) PRINT *,'FAIL'
      IF (C45 .NE.  CQ45) PRINT *,'FAIL'
      IF (D45 .NE.  DQ45) PRINT *,'FAIL'
      IF (E45 .NE.  EQ45) PRINT *,'FAIL'
      IF (J45 .NE.  JQ45) PRINT *,'FAIL'
      IF (K45 .NE.  KQ45) PRINT *,'FAIL'
      IF (X45 .NE.  XQ45) PRINT *,'FAIL'
      IF (Y45 .NE.  YQ45) PRINT *,'FAIL'
      IF (Z45 .NE.  ZQ45) PRINT *,'FAIL'
      IF (C46 .NE.  CQ46) PRINT *,'FAIL'
      IF (D46 .NE.  DQ46) PRINT *,'FAIL'
      IF (E46 .NE.  EQ46) PRINT *,'FAIL'
      IF (J46 .NE.  JQ46) PRINT *,'FAIL'
      IF (K46 .NE.  KQ46) PRINT *,'FAIL'
      IF (X46 .NE.  XQ46) PRINT *,'FAIL'
      IF (Y46 .NE.  YQ46) PRINT *,'FAIL'
      IF (Z46 .NE.  ZQ46) PRINT *,'FAIL'
      IF (C47 .NE.  CQ47) PRINT *,'FAIL'
      IF (D47 .NE.  DQ47) PRINT *,'FAIL'
      IF (E47 .NE.  EQ47) PRINT *,'FAIL'
      IF (J47 .NE.  JQ47) PRINT *,'FAIL'
      IF (K47 .NE.  KQ47) PRINT *,'FAIL'
      IF (X47 .NE.  XQ47) PRINT *,'FAIL'
      IF (Y47 .NE.  YQ47) PRINT *,'FAIL'
      IF (Z47 .NE.  ZQ47) PRINT *,'FAIL'
      IF (C48 .NE.  CQ48) PRINT *,'FAIL'
      IF (D48 .NE.  DQ48) PRINT *,'FAIL'
      IF (E48 .NE.  EQ48) PRINT *,'FAIL'
      IF (J48 .NE.  JQ48) PRINT *,'FAIL'
      IF (K48 .NE.  KQ48) PRINT *,'FAIL'
      IF (X48 .NE.  XQ48) PRINT *,'FAIL'
      IF (Y48 .NE.  YQ48) PRINT *,'FAIL'
      IF (Z48 .NE.  ZQ48) PRINT *,'FAIL'
      PRINT *,'PC90830 TEST ALL TYPE AND Y +-*/ '
      END
