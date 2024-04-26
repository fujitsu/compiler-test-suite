      DIMENSION AC(500),BC( 50, 50),CD(10,10,10),A(100),B(100)
      COMPLEX AC,BC,CD,A,B,C,D
  102 FORMAT(1H0 8X,15H*ERROR* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  103 FORMAT(1H0 11X,12H*OK*    *OK*3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  104 FORMAT(1H0 8X,15H*ERROR*    *OK*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0 11X,12H*OK* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
      DO 20 I=1,500
      S=I
      AC(I)=CMPLX(S,S)
   20 CONTINUE
      DO 30 I=1,50
      S=FLOAT(I)
      DO 30 J=1,50
      T=S*FLOAT(J)
      BC(I,J)=CMPLX(T,T)
   30 CONTINUE
      DO 40 I=1,10
      DO 40 J=1,10
      DO 40 K=1,10
      T=I*J*K
      CD(I,J,K)=CMPLX(T,T)
   40 CONTINUE
      N  =2
      NN =22
      M  =5
      MM =55
      BC(3,2)=(-3.9,-1.8)
      CD(8,7,6)=(-1.4E5,-3.73)
      A( 1)=AC(500)
      B( 1)=(0.5E3,0.5E3)
      A( 2)=AC(N)
      B( 2)=(0.2E1,0.2E1)
      A( 3)=AC(N+30)
      B( 3)=(0.32E2,0.32E2)
      A( 4)=AC(NN-3)
      B( 4)=(0.19E2,0.19E2)
      A( 5)=AC(3*MM)
      B( 5)=(0.165E3,0.165E3)
      A( 6)=AC(3*MM+100)
      B( 6)=(0.265E3,0.265E3)
      A( 7)=AC(10*MM-100)
      B( 7)=(0.45E3,0.45E3)
      A( 8)=BC(1,1)
      B( 8)=(0.1E1,0.1E1)
      A( 9)=BC(M,M)
      B( 9)=(0.25E2,0.25E2)
      A(10)=BC(M+6,M+6)
      B(10)=(0.121E3,0.121E3)
      A(11)=BC(MM-8,MM-8)
      B(11)=(0.2209E4,0.2209E4)
      A(12)=BC(20*N,20*N)
      B(12)=(1.6E3,1.6E3)
      A(13)=BC(4*M+10,4*M+10)
      B(13)=(0.9E3,0.9E3)
      A(14)=BC(2*NN-4,2*NN-4)
      B(14)=(0.16E4,0.16E4)
      A(15)=CD(1,1,1)
      B(15)=(0.1E1,0.1E1)
      A(16)=CD(N,N,N)
      B(16)=(0.8E1,0.8E1)
      A(17)=CD(N+1,N+1,N+1)
      B(17)=(0.27E2,0.27E2)
      A(18)=CD(M-1,M-1,M-1)
      B(18)=(0.64E2,0.64E2)
      A(19)=CD(3*N,3*N,3*N)
      B(19)=(0.216E3,0.216E3)
      A(20)=CD(3*N+4,3*N+4,3*N+4)
      B(20)=(0.1E4,0.1E4)
      A(21)=CD(2*M-1,2*M-1,2*M-1)
      B(21)=(0.729E3,0.729E3)
      A(22)=BC(1,NN)
      B(22)=(0.22E2,0.22E2)
      A(23)=BC(NN,N+2)
      B(23)=(0.88E2,0.88E2)
      A(24)=BC(NN+3,MM-5)
      B(24)=(0.125E4,0.125E4)
      A(25)=BC(MM-5,10*M)
      B(25)=(2.5E3,2.5E3)
      A(26)=BC(10*M,3*NN-46)
      B(26)=(0.10E4,0.10E4)
      A(27)=BC(5*M+5,3*NN-16)
      B(27)=(0.15E4,0.15E4)
      A(28)=CD(1,N,N+1)
      B(28)=(0.6E1,0.6E1)
      A(29)=CD(N,N+1,M-1)
      B(29)=(0.24E2,0.24E2)
      A(30)=CD(N+1,M-4,5*N)
      B(30)=(30.0,30.0)
      A(31)=CD(M-0,3*N,3*N+1)
      B(31)=(0.21E3,0.21E3)
      A(32)=CD(3*N,3*N+1,2*M-2)
      B(32)=(0.336E3,0.336E3)
      A(33)=BC(N+1,4*M-18)
      B(33)=(-3.9,-1.8)
      A(34)=CD(NN-20,3*N+1,3*M-9)
      B(34)=(84.0,84.0)
      I=1
      N=28
  699 DO 10 I=I,N
      RL  =REAL(B(I))
      AG  =AIMAG(B(I))
      DIFR=REAL(A(I))-RL
      DIFI=AIMAG(A(I))-AG
      IF(RL)1,2,1
    1 IF(ABS(DIFR)-1.0E-5*ABS(RL))700,701,701
    2 IF(ABS(DIFR)-1.0E-6)700,701,701
  700 IF(AG)3,4,3
    3 IF(ABS(DIFI)-1.0E-5*ABS(AG))702,703,703
    4 IF(ABS(DIFI)-1.0E-6)702,703,703
  701 IF(AG)5,6,5
    5 IF(ABS(DIFI)-1.0E-5*ABS(AG))704,705,705
    6 IF(ABS(DIFI)-1.0E-6)704,705,705
  702 WRITE(6,103)I
      GO TO 10
  703 WRITE(6,105)I
      GO TO 10
  704 WRITE(6,104)I,A(I),B(I),DIFR,DIFI
      GO TO 10
  705 WRITE(6,102)I,A(I),B(I),DIFR,DIFI
   10 CONTINUE
      IF(N-28)707,706,707
  706 I=29
      N=34
C
      GO TO 699
  707 CONTINUE
      STOP
      END
