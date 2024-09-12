      INTEGER*4 H,I,J,K,L,M,N
      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,8X,2H( ,I2,2H ),14X,E14.7)
  103 FORMAT(1H0,12X,4H*OK*,11X,2H( ,I2,2H ),14X,E14.7)
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      B=4.5
      C=124.6
      D=-62.6
      E=-50.8
      F=15.0
      G=0.0
      X=0.5
      H=123456
      I=300000
      J=-300000
      K=-123456
      L=42866
      M=-62385
      N=0
      ITEM=1
    1 A=B+H
      IF(B+H)700,700,701
    2 A=C+J
      IF(C+J)701,700,700
    3 A=K+E
      IF(K+E)701,700,700
    4 A=H+G
      IF(H+G)700,700,701
    5 A=E-J
      IF(E-J)700,700,701
    6 A=H-B
      IF(H-B)700,700,701
    7 A=C-I
      IF(C-I)701,700,700
    8 A=E-K
      IF(E-K)700,700,701
    9 A=G-N
      IF(G-N)700,701,700
   10 A=G-M
      IF(G-M)700,700,701
   11 A=B*H
      IF(B*H)700,700,701
   12 A=E*L
      IF(E*L)701,700,700
   13 A=I*G
      IF(I*G)700,701,700
   14 A=H**X
      IF(H**X)700,700,701
   15 A=C**N
      IF(C**N)700,700,701
   16 A=I**G
      IF(I**G)700,700,701
   17 A=H/B
      IF(H/B)700,700,701
   18 A=J/F
      IF(J/F)701,700,700
   19 A=K/E
      IF(K/E)700,700,701
   20 A=N/C
      IF(N/C)700,701,700
   21 A=B+H+I*F+L/X-B**N
      IF(B+H+I*F+L/X-B**N)700,700,701
   22 A=(D+K)*(J-D)+I**X
      IF((D+K)*(J-D)+I**X)700,700,701
   23 A=H*D+E*L-I*C-K/D
      IF(H*D+E*L-I*C-K/D)701,700,700
   24 A=L*G+N/B-L**G-1
      IF(L*G+N/B-L**G-1)701,700,700
   25 A=(H+I)*G-C**X*N
      IF((H+I)*G-C**X*N)700,701,700
  700 WRITE(6,102)ITEM,A
      GO TO 1000
  701 WRITE(6,103)ITEM,A
 1000 ITEM=ITEM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
     *,24,25,26),ITEM
   26 WRITE(6,999)
      STOP
      END
