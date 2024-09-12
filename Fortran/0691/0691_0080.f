      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,8X,2H( ,I2,2H ),14X,E14.7)
  103 FORMAT(1H0,12X,4H*OK*,11X,2H( ,I2,2H ),14X,E14.7)
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      B=15.0
      C=43.2
      D=123.4
      E=-50.5
      F=-46.3
      G=-17.4
      H=0.0
      I=2
      J=123
      K=67
      L=-20
      M=-2
      N=0
      ITEM=1
    1 A=B+J
      IF(B+J)700,700,701
    2 A=C+K
      IF(C+K)700,700,701
    3 A=D+L
      IF(D+L)700,700,701
    4 A=E+L
      IF(E+L)701,700,700
    5 A=N+H
      IF(N+H)700,701,700
    6 A=J-C
      IF(J-C)700,700,701
    7 A=E-M
      IF(E-M)701,700,700
    8 A=H-L
      IF(H-L)700,700,701
    9 A=B*I
      IF(B*I)700,700,701
   10 A=D*M
      IF(D*M)701,700,700
   11 A=E*I
      IF(E*I)701,700,700
   12 A=F*N
      IF(F*N)700,701,700
   13 A=H*J
      IF(H*J)700,701,700
   14 A=E*L
      IF(E*L)700,700,701
   15 A=D/I
      IF(D/I)700,700,701
   16 A=E/I
      IF(E/I)701,700,700
   17 A=H/K
      IF(H/K)700,701,700
   18 A=G/M
      IF(G/M)700,700,701
   19 A=(E+F)/I+L*B-B**I
      IF((E+F)/I+L*B-B**I)701,700,700
   20 A=E+E-E-E+F+F-F-F+K-N**B+E*I/M
      IF(E+E-E-E+F+F-F-F+K-N**B+E*I/M)700,700,701
   21 A=H*J+N*C-D*H+F**N*H
      IF(H*J+N*C-D*H+F**N*H)700,701,700
   22 A=E*I+J*F+I*H-B/L+M**3
      IF(E*I+J*F+I*H-B/L+M**3)701,700,700
   23 A=C*2/4+B**2**2+J
      IF(C*2/4+B**2**2+J)700,700,701
   24 A=(B+C+D)*I*N+J/123-C**N
      IF((B+C+D)*I*N+J/123-C**N)700,701,700
   25 A=E*I+C/M+M**5
      IF(E*I+C/M+M**5)701,700,700
  700 WRITE(6,102)ITEM,A
      GO TO 1000
  701 WRITE(6,103)ITEM,A
 1000 ITEM=ITEM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
     *,24,25,26),ITEM
   26 WRITE(6,999)
      STOP
      END
