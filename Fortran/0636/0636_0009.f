      PROGRAM MAIN
      REAL*8 A1(5)
      REAL*8 B1(5)
      REAL*8 C1(5)
      REAL*8 D1(5)
      REAL*8 E1(5)
      REAL*8 F1(5)
      REAL*8 G1(5)
      REAL*8 H1(5)
      REAL*8 O1(5)
      REAL*8 P1(5)
      REAL*8 Q1(5)
      REAL*8 R1(5)
      REAL*8 S1(5)
      REAL*8 T1(5)
      REAL*8 U1(5)
      REAL*8 V1(5)
      REAL*8 W1(5)
      REAL*8 X1(5)
      REAL*8 Y1(5)
      REAL*8 Z1(5)
      REAL*8 AA(5,5),BB(5,5)
      REAL*8 CC(5,5),DD(5,5)
      DO 100 I = 1,5
  100   A1(I) = I * I
      DO 110 I = 1,5
  110   B1(I) = I * I - 1
      DO 120 I = 1,5
  120   C1(I) = I * 9 - I
      DO 130 I = 1,5
  130   D1(I) = I * I * I - I**2
      DO 140 I = 1,5
  140   E1(I) = I
      DO 150 I = 1,5
  150   F1(I) =   - I
      DO 160 I = 1,5
  160   G1(I) =-I * I
      DO 170 I = 1,5
  170   H1(I) = I * 10 - I + 1
      DO 180 I = 1,5
  180   O1(I) = I * 3
      DO 190 I = 1,5
  190   P1(I) = I * 5
      DO 200 I = 1,5
  200   Q1(I) =-I * 2
      DO 210 I = 1,5
  210   R1(I) =-I * 3.3
      DO 220 I = 1,5
  220   S1(I) = I * 6
      DO 230 I = 1,5
  230   T1(I) = I * 2
      DO 240 I = 1,5
  240   U1(I) = I * 5 -20
      DO 250 I = 1,5
  250   V1(I) =-I * 5 +9
      DO 260 I = 1,5
  260   W1(I) =-I * 5.55555
      DO 270 I = 1,5
  270   X1(I) =-I * 4.7788
      DO 280 I = 1,5
  280   Y1(I) = I * 5 +6.987
      DO 290 I = 1,5
  290   Z1(I) = I * 5 +9.5432
      DO 300 I = 1,5
        DO 300 J = 1,5
  300     BB(I,J) = I*J
      DO 310 I = 1,5
        DO 310 J = 1,5
  310     DD(I,J) = I*J
      DO 5 I = 1,5
        TA = A1(I)
        TB = B1(I)
        TC = C1(I)
        TD = D1(I)
        TE = E1(I)
        TF = F1(I)
        TG = G1(I)
        TH = H1(I)
        TO = O1(I)
        TP = P1(I)
        TQ = Q1(I)
        TR = R1(I)
        TS = S1(I)
        TT = T1(I)
        TU = U1(I)
        TV = V1(I)
        TW = W1(I)
        TX = X1(I)
        TY = Y1(I)
        TZ = Z1(I)
        DO 20 J = 1,5
          AA(I,J) = BB(I,J) + TA + TB + TC + TD + TE + TF + TG
     &                      + TH + TO + TP + TQ + TR + TS + TT
     &                      + TU + TV + TW + TX + TY + TZ
   20   CONTINUE
   5  CONTINUE
      DO 30 I = 1,5
        TA = A1(I) + 1
        TB = B1(I) + 1
        TC = C1(I) + 1
        TD = D1(I) + 1
        TE = E1(I) + 1
        TF = F1(I) + 1
        TG = G1(I) + 1
        TH = H1(I) + 1
        TO = O1(I) + 1
        TP = P1(I) + 1
        TQ = Q1(I) + 1
        TR = R1(I) + 1
        TS = S1(I) + 1
        TT = T1(I) + 1
        TU = U1(I) + 1
        TV = V1(I) + 1
        TW = W1(I) + 1
        TX = X1(I) + 1
        TY = Y1(I) + 1
        TZ = Z1(I) + 1
        DO 40 J = 1,5
          CC(I,J) = DD(I,J) + TA + TB + TC + TD + TE + TF + TG
     &                      + TH + TO + TP + TQ + TR + TS + TT
     &                      + TU + TV + TW + TX + TY + TZ
   40   CONTINUE
   30 CONTINUE
      PRINT*,AA,CC
      STOP
      END
