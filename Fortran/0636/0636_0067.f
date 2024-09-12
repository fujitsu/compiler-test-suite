         DIMENSION  A(20,20),AA(20,20),W1(20),R(20),W2(20)
                 DATA   N/20/,N1/50/
         DO 21 I=1,20
         DO 20 J=1,20
      W1(J)=J+1.0
      W2(J)=J+2.0
      A(I,J)=N1-I
   20 A(J,I)=N1-I
   21 R(I)=1.0/(2.0-0.5)**2
         DO 31 I=1,N,1
         DO 31 J=1,N,1
   31 AA(I,J)=A(I,J)
      WRITE(6,100) AA,R,W1,W2
 100  FORMAT(1H ,3(F20.13,2X))
      STOP
      END
        SUBROUTINE  SUB(A,S,W1,W2,NDIM,N,IP,IQ)
         DIMENSION  A(NDIM,N),S(NDIM,N),W1(N),W2(N)
         COV=A(IP,IQ)
         SIV=A(IQ,IP)
         IF(SIV) 1,1,3
    1    SIV=-SIV
    3    CONTINUE
         DO 5310 I=1,N,1
         W1(I)=A(IP,I)
 5310    CONTINUE
         DO 5410 I=1,N,1
         W2(I)=A(IQ,I)
 5410    CONTINUE
         DO 5510 I=1,N,1
         A(IP,I)=COV*W1(I)-SIV*W2(I)
 5510    CONTINUE
         DO 5610 I=1,N,1
         A(IQ,I)=COV*W2(I)+SIV*W1(I)
 5610    CONTINUE
         DO 5710 I=1,N,1
         W1(I)=S(I,IP)
 5710    CONTINUE
         DO 5810 I=1,N,1
         W2(I)=S(I,IQ)
 5810    CONTINUE
         DO 5910 I=1,N,1
         S(I,IP)=COV*W1(I)-SIV*W2(I)
 5910    CONTINUE
         DO 5020 I=1,N,1
         S(I,IQ)=COV*W2(I)+SIV*W1(I)
 5020    CONTINUE
        RETURN
        END
