      DOUBLE PRECISION A,B,C,D,E,F,G
      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,8X,2H( ,I2,2H ),8X,D24.17)
  103 FORMAT(1H0,12X,4H*OK*,11X,2H( ,I2,2H ),8X,D24.17)
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      B=123.4D0
      C=0.5D0
      D=382.0D-1
      E=-62.54D1
      F=-0.5D0
      G=0.0D0
      O=12.5
      P=-12.5
      Q=0.48E1
      R=50.0
      S=-1234.0E-1
      T=0.5E0
      Z=0.0
      ITEM=1
    1 A=B+O
      IF(B+0)700,700,701
    2 A=C-P
      IF(C-P)700,700,701
    3 A=E+S
      IF(E+S)701,700,700
    4 A=G+Z
      IF(G-Z)700,701,700
    5 A=D-P
      IF(D-P)700,700,701
    6 A=S-D
      IF(S-D)701,700,700
    7 A=D-S
      IF(D-S)700,700,701
    8 A=E-Q
      IF(E-Q)701,700,700
    9 A=E+F
      IF(E+F)701,700,700
   10 A=B*R
      IF(B*R)700,700,701
   11 A=P*D
      IF(P*D)701,700,700
   12 A=S*E
      IF(S*E)700,700,701
   13 A=R*G
      IF(R*G)700,701,700
   14 A=Z*R
      IF(Z*R)700,701,700
   15 A=S/F
      IF(S/F)700,700,701
   16 A=D/O
      IF(D/O)700,700,701
   17 A=E/T
      IF(E/T)701,700,700
   18 A=Z/D
      IF(Z/D)700,701,700
   19 A=D**T
      IF(D**T)700,700,701
   20 A=B**Z
      IF(B**Z)700,700,701
   21 A=G**R
      IF(G**R)700,701,700
   22 A=B+P-R*C/T+(P+E)/F+(D-R)*O**G
      IF(B+P-R*C/T+(P+E)/F+(D-R)*O**G)700,700,701
   23 A=(P+S)*D+(B+R)/E+(R+T)**C
      IF((P+S)*D+(B+R)/E-(R+T)**C)701,700,700
   24 A=(B+R+S-E)*G*Z/D**G*Z
      IF((B+R+S-E)*G*Z/D**G*Z)700,701,700
   25 A=B/S-R*C+E*O-R**C
      IF(B/S-R*C+E*O-R**C)701,700,700
  700 WRITE(6,102)ITEM,A
      GO TO 1000
  701 WRITE(6,103)ITEM,A
 1000 ITEM=ITEM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
     *,24,25,26),ITEM
   26 WRITE(6,999)
      STOP
      END
