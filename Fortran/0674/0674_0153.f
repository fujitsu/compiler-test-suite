      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA   A,B,C/400*1.,400*2.,400*3./
      DATA   N1,N2,N3/1,2,3/,NN/16/

      DO 10 J=1,NN,N2/N1
       DO 10 I=1,NN,N2/1
         IP=I+N1
         A(IP,J)=A(IP+1,J)+B(I,J)*C(I,J)
  10  CONTINUE
      DO 20 J=(N1+1),NN,N3-N2+N1
       DO 30 I=2,NN+1,(N2-N1)
         B(I+N2-N1,J)=A(I,J)+C(I+N2,J)
  30   CONTINUE
       DO 40 I=2,NN+1,(N2-1)
         C(I+N1,J+N2)=B(I+N1-N2,J+N3)+A(I,J)
  40   CONTINUE
       DO 50 I=NN,N2,(N1-N2)
         A(I+N1,J+N2)=B(I+N1-N2,J+N3)+C(I,J)
  50   CONTINUE
       DO 60 I=NN,N2,(-N1)
         IP=I+N1
         C(IP-1,J)=B(I-N2+1,J+N3-N2)+A(IP,J)
  60   CONTINUE
  20  CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
