      INTEGER*4 I,J,K,L,M,N
      DOUBLE PRECISION A,B,C,D,E,F,G,H
      WRITE(6,100)
      WRITE(6,101)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,8X,2H( ,I2,2H ),8X,D24.17)
  103 FORMAT(1H0,12X,4H*OK*,11X,2H( ,I2,2H ),8X,D24.17)
  999 FORMAT(1H0 / 2X,27H*FORTRAN*              EXIT)
      B=0.05D1
      C=45.6D0
      D=0.4D1
      E=462.58D1
      F=-3438.0D0
      G=-0.5D0
      H=0.0D0
      I=123456
      J=-54000
      K=54000
      L=38624
      M=-123456
      N=0
      ITEM=1
    1 A=I+B
      IF(I+B)700,700,701
    2 A=J+F
      IF(J+F)701,700,700
    3 A=K+H
      IF(K+H)700,700,701
    4 A=C-L
      IF(C-L)701,700,700
    5 A=H+N
      IF(H+N)700,701,700
    6 A=I-C
      IF(I-C)700,700,701
    7 A=F-J
      IF(F-J)700,700,701
    8 A=M-D
      IF(M-D)701,700,700
    9 A=F-F
      IF(F-F)700,701,700
   10 A=H-N
      IF(H-N)700,701,700
   11 A=J*B
      IF(J*B)701,700,700
   12 A=L*C
      IF(L*C)700,700,701
   13 A=J*G
      IF(J*G)700,700,701
   14 A=G*L
      IF(H*L)700,701,700
   15 A=H*N
      IF(H*N)700,701,700
   16 A=I/B
      IF(I/B)700,700,701
   17 A=J/D
      IF(J/D)701,700,700
   18 A=M/F
      IF(M/F)700,700,701
   19 A=N/D
      IF(N/D)700,701,700
   20 A=I**B
      IF(I**B)700,700,701
   21 A=K**G
      IF(K**G)700,700,701
   22 A=C**N
      IF(C**N)700,700,701
   23 A=B*I-J*G+(K+E)/C**H
      IF(B*I-J*G+(K+E)/C**H)700,700,701
   24 A=M*D-L/B/D+K*G**N
      IF(M*D-L/B/D-K*G**N)701,700,700
   25 A=E*N+(K+J)*H+L**B*N
      IF(E*N+(K+J)*H+L**B*N)700,701,700
  700 WRITE(6,102)ITEM,A
      GO TO 1000
  701 WRITE(6,103)ITEM,A
 1000 ITEM=ITEM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
     *,24,25,26),ITEM
   26 WRITE(6,999)
      STOP
      END
