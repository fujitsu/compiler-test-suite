      PROGRAM MAIN
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(50,50),B(50,50),C(50,50)
      DATA  A,B,C/2500*1.D0,2500*2.D0,2500*3.D0/
      DATA  NN/50/

      CALL SUB(A,B,C,NN)
      WRITE(6,*) 'A=',((A(I,J),I=1,30),J=1,30)
      WRITE(6,*) 'B=',((B(I,J),I=1,30),J=1,30)
      WRITE(6,*) 'C=',((C(I,J),I=1,30),J=1,30)
      STOP
      END

      SUBROUTINE SUB(A,B,C,NN)
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(NN,NN),B(NN,NN),C(NN,NN)
      NX = NN/2-1

      DO 10 I=NX,1,-1
       DO 20 J=1,NX
         A(NN-J*2,I*2)=B(NN-J,I*2+1)+C(NN-2*J,I*2-1)
 20    CONTINUE
       DO 30 J=1,NX
        B(NN-J*2,I)=A(NN-J,I)+C(NN-2*J,I)
 30    CONTINUE
 10   CONTINUE

      DO 40 I=2,NX
       DO 40 J=20,1,-1
         C(J,I)=B(J*2,I*2)+A(J*2+1,I)
         B(J*1,I+1)=C(J*2+1,I*2+1)+A(J,I)
 40   CONTINUE

      RETURN
      END
