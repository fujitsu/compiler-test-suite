      INTEGER*4 A,B,C,D,E,F,G,H
      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H_ JUSTICE _     _ ITEM _          _ COMPUTED,
     *9H RESULT _)
  102 FORMAT(1H0,12X,7H*ERROR*,8X,2H( ,I2,2H ),15X,I12)
  103 FORMAT(1H0,12X,4H*OK*,11X,2H( ,I2,2H ),15X,I12)
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      B=63825
      C=3236541
      D=82383
      E=62166
      F=123456
      G=0
      P=40000
      H=-654321
      I=2
      J=-2
      K=4
      L=-5
      M=0
      ITEM=1
    1 A=B-L
      IF(B-L)700,700,701
    2 A=K-D
      IF(K-D)701,700,700
    3 A=C+J
      IF(C+J)700,700,701
    4 A=M-F
      IF(M-F)701,700,700
    5 A=J+G
      IF(J+G)701,700,700
    6 A=G+M
      IF(G+M)700,701,700
    7 A=B*M
      IF(B*M)700,701,700
    8 A=C*J
      IF(C*J)701,700,700
    9 A=E*I
      IF(E*I)700,700,701
   10 A=B/L
      IF(B/L)701,700,700
   11 A=E/I
      IF(E/I)700,700,701
   12 A=2**3**2
      IF(2**3**2)700,700,701
   13 A=E**M
      IF(E**M)700,700,701
   14 A=H**I
      IF(H**I)701,700,700
   15 A=D**M
      IF(D**M)700,700,701
   16 A=M**B
      IF(M**B)700,701,700
   17 A=B+D*I/K-H+F**M
      IF(B+D*I/K-H+F**M)700,700,701
   18 A=B*I+B*J-E/L+P**I
      IF(B*I+B*J-E/L+P**I)700,700,701
   19 A=B+B-B-B+M**K
      IF(B+B-B-B+M**K)700,701,700
   20 A=B+(C-C)-B+E**M*G
      IF(B+(C-C)-B+E**M*G)700,701,700
   21 A=(I-E)+H*M-G*K-F**G
      IF((I-E)+H*M-G*K-F**G)701,700,700
   22 A=B+(D-C)*M*G
      IF(B+(D-C)*M*G)700,700,701
   23 A=G-H
      IF(G-H)700,700,701
   24 A=G
      IF(G)700,701,700
   25 A=L+K*C*G+L-2*L+I**G*M
      IF(L+K*C*G+L-2*L+I**G*M)700,701,700
  700 WRITE(6,102)ITEM,A
      GO TO 1000
  701 WRITE(6,103)ITEM,A
 1000 ITEM=ITEM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
     *,24,25,26),ITEM
   26 WRITE(6,999)
      STOP
      END
