      PROGRAM MAIN
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(80,80),B(80,80),C(80,80)
      DATA  A,B,C/6400*1.D0,6400*2.D0,6400*3.D0/
      DATA  NN/80/
      CALL SUB(A,B,C,NN)
      WRITE(6,*) ' *** PROGRAM  *** '
      WRITE(6,*) 'A=',((A(I,J),I=1,30),J=1,30)
      WRITE(6,*) 'B=',((B(I,J),I=1,30),J=1,30)
      WRITE(6,*) 'C=',((C(I,J),I=1,30),J=1,30)
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(NN,NN),B(NN,NN),C(NN,NN)
      NX = NN/2-3
      DO 10 I=NX,1,-1
       DO 20 J=1,NX
         A(J*2,I*2)=B(J,I*2+1)+C(2*J,I*2-1)
         B(J*2,I*2)=A(J*2-1,I)+C(2*J,I)
 20    CONTINUE
 10   CONTINUE
      NZ =NN/2-1
      DO 40 I=2,NZ
       DO 40 J=2,NZ
         C(J,I*2)=B(J,I*2+1)+A(J,I)
         B(J,I*2)=C(J,I*2-1)+A(J,I)
 40   CONTINUE
      DO 50 I1=2,NX
        A(I1,NX)=B(I1,1)-DFLOAT(I1)
        DO 50 I2=2,NX
          C(I1,I2)=A(I2,1)*C(I1,I2*2)
          B(I1,I2)=A(I1,I2)-B(I1*2,I2*2)
 50   CONTINUE
      RETURN
      END
