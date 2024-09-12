      PROGRAM MAIN
      IMPLICIT  REAL*8(A-D)
      COMMON /BLK/  A(80,80),B(80,80),C(80,80)
      COMMON /LST/  L(80)
      DATA  NN/80/
      DO 10 I=1,80
       L(I)=I
 10   CONTINUE
      CALL SUB(NN)
      WRITE(6,*) ' *** PROGRAM  *** '
      WRITE(6,*) 'A=',((A(I,J),I=1,50),J=1,30)
      WRITE(6,*) 'B=',((B(I,J),I=1,50),J=1,30)
      WRITE(6,*) 'C=',((C(I,J),I=1,50),J=1,30)
      STOP
      END
      BLOCK DATA INIT
      IMPLICIT  REAL*8(A-D)
      COMMON /BLK/  A(80,80),B(80,80),C(80,80)
      DATA  A,B,C/6400*1.D0,6400*2.D0,6400*3.D0/
      END
      SUBROUTINE SUB(NN)
      IMPLICIT  REAL*8(A-D)
      COMMON /BLK/ DA(80,80),DB(80,80),DC(80,80)
      COMMON /LST/  L(80)
      DIMENSION  DX(80,80),DY(80,80),DZ(80,80)
      DATA  DX,DY,DZ/6400*1.D0,6400*2.D0,6400*3.D0/
      NX = NN-3
      DO 10 I=2,NX
       DO 20 J=2,L(I)
         DA(J+1,I)=DB(NX,I)+DC(J,I)
         DB(J,I-1)=DA(J,I-1)+DC(NX,J)
 20    CONTINUE
       DO 30 J=2,L(I)
         DC(J+1,NX)=DA(J,2)+DB(J,I)
         DB(J,I)=DA(J,I-1)+DC(J,I)
 30    CONTINUE
 10   CONTINUE
      NZ =NN/3*2
      DO 40 I=L(2),NZ
       DO 50 J=L(2),NZ
         DC(J,I+1)=DY(J+1,I*1+1)+DZ(J,I)
 50   CONTINUE
       DO 60 J=L(2),NZ
         DX(J,I+1)=DY(J+1,I*1+1)+DZ(J,I)
 60   CONTINUE
 40   CONTINUE
      DO 70 I1=2,NX
        DX(I1,NX)=DB(I1,1)-DFLOAT(I1)
        DO 70 I2=2,NX
          DC(I1,I2)=DA(I2,1)*DB(I1,I2)
          DB(I1,I2)=DZ(I1,I2)-DA(I1,I2)
 70   CONTINUE
      RETURN
      END
