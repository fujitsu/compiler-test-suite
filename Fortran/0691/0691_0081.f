      DOUBLE PRECISION A,B,C,D,E,F,G,H
      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,8X,2H( ,I2,2H ),8X,D24.17)
  103 FORMAT(1H0,12X,4H*OK*,11X,2H( ,I2,2H ),8X,D24.17)
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      B=12345.6D1
      C=-12345.6D1
      D=0.0D0
      E=1.0D-3
      F=4.5D2
      G=3.6D0
      H=222.22D2
      I=2
      J=10
      K=-2
      L=-15
      M=45
      N=0
      ITEM=1
    1 A=B+J
      IF(B+J)700,700,701
    2 A=C+K
      IF(C+K)701,700,700
    3 A=L+G
      IF(L+G)701,700,700
    4 A=D+N
      IF(D+N)700,701,700
    5 A=J+D
      IF(J-D)700,700,701
    6 A=B-J
      IF(B-J)700,700,701
    7 A=C-L
      IF(C-L)701,700,700
    8 A=D-K
      IF(D-K)700,700,701
    9 A=G-L
      IF(G-K)700,700,701
   10 A=N-D
      IF(N-D)700,701,700
   11 A=B*I
      IF(B*I)700,700,701
   12 A=B*K
      IF(B*K)701,700,700
   13 A=L*C
      IF(L*C)700,700,701
   14 A=E*N
      IF(E*N)700,701,701
   15 A=J*D
      IF(J*D)700,701,700
   16 A=B/I
      IF(B/I)700,700,701
   17 A=B/K
      IF(B/K)701,700,700
   18 A=C/K
      IF(C/K)700,700,701
   19 A=D/J
      IF(D/J)702,701,702
   20 A=N/C
      IF(N/C)702,701,702
   21 A=B+I-L*F+C/K-D**I
      IF(B+I-L*F+C/K-D**I)700,700,701
   22 A=C*I*K/K/J+L*B
      IF(C*I*K/K/J+L*B)701,700,701
   23 A=(B+C)*(I+K)+N+D
      IF((B+C)*(I+K)+N+D)700,701,700
   24 A=E-L+M/G+H**N-J*B
      IF(E-L+M/G+H**N-J*B)701,700,700
   25 A=B*N+(B+J)*N+M*G**N*D
      IF(B*N+(B+J)*N+M*G**N*D)700,701,700
  700 WRITE(6,102)ITEM,A
      GO TO 1000
  701 WRITE(6,103)ITEM,A
      GO TO 1000
  702 IF(A-1.0D-15)701,700,700
 1000 ITEM=ITEM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
     *,24,25,26),ITEM
   26 WRITE(6,999)
      STOP
      END
