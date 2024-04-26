      INTEGER A(10,10),B(10,10),C(10,10),D(10,10)
      INTEGER E(10,10),F(10,10)
      REAL*8 DA10(10,10),DA20(10,10),DA30(10,10)
      COMPLEX*16 CD10,CD20
      DATA A,B/100*1,100*2/,C,D,E,F/400*2/
      DATA DA10,DA20,DA30/300*2/
      COMMON /BLK/ CD10(10,10),CD20(10,10)
C
      DO 789 I=1,10
        DO 789 J=1,10
          CD10(I,J) = 1.0
  789     CD20(I,J) = 1.0
C
      CALL SUB1(A,B,C,D,10,10,10)
      WRITE(6,*) C
      WRITE(6,*) D
C
      CALL SUB1(A,B,E,F,10,10,7)
      WRITE(6,*) E
      WRITE(6,*) F
C
      CALL SUB2(DA10,DA20,DA30,10)
      STOP
      END
C
      SUBROUTINE SUB1(A,B,C,D,N1,N2,M)
      INTEGER A(N1,N1),B(N1,N1),C(N1,N1),D(N2,N2)
      MM = M * 2 - 10
      II = 1
      DO 20 I=1,MM
        C(II,I) = I
        DO 20 J=1,MM
          C(II,I) = B(I,J) * A(I,J)
          D(II,I) = B(I,J) / A(I,J)
   20 CONTINUE
      RETURN
      END
C
      SUBROUTINE SUB2(DA10,DA20,DA30,NN)
      REAL*8 DA10(NN,NN),DA20(NN,NN),DA30(NN,NN)
      COMPLEX*16 CD10,CD20
      COMMON /BLK/ CD10(10,10),CD20(10,10)
      NX=NN-3
      J1 = 1
      DO 40 J2=1,NX
        DA20(J1,J2)=DA30(J1,J2)
        DO 50 J3=1,NX
          DA20(J1,J2)=DA10(J2,J3)/DA30(J1,J3)
          CD20(J1,J2)=DCMPLX(DA10(J1,J3),DA30(J2,J3))
  50    CONTINUE
  40  CONTINUE
      WRITE(6,1) DA20
      WRITE(6,2) CD20
   1  FORMAT(8F10.5)
   2  FORMAT(4(1H,'(',F8.3,',',F8.3,')'))
      RETURN
      END
