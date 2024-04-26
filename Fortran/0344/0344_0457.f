      INTEGER*4 A(20),B(20),C(20)
      LOGICAL*4 L(20),L1(20),L2(20),LX,LY
      DATA  A,B,C/20*5,20*2,20*7/
      DATA  L/20*.TRUE./,L1,L2/40*.TRUE./
*
      DO 11 I=1,20,2
        L(I)=.FALSE.
  11  CONTINUE
      DO 10 I=1,20
        NY=A(I)+B(I)
        N1=NOT(A(I))
        N2=IAND(B(I),3)
        N3=IOR(C(I),5)
        N4=IEOR(A(I),11)
        NZ=A(I)*2
        LX=A(I).GT.B(I)
        IF (L(I)) THEN
          NX=B(I)
          LY=L2(I)
          NY=IAND(A(I),3)
          NZ=LX.AND.LY
          C(I)=NY+B(I)
        ELSE
          NX=A(I)
          LY=L1(I)
          NY=IOR(B(I),9)
          NZ=LX.OR.LY
          C(I)=NY+A(I)
        ENDIF
        IF (L(I)) B(I)=A(I)+C(I)
        A(I)=N1+N2+N3+N4
 10   CONTINUE
      WRITE(6,*) 'A= ',A
      WRITE(6,*) 'B= ',B
      WRITE(6,*) 'C= ',C
      WRITE(6,*) 'NY=',NY
      WRITE(6,*) 'NZ=',NZ
      WRITE(6,*) 'N1=',N1
      WRITE(6,*) 'N2=',N2
      WRITE(6,*) 'N3=',N3
      WRITE(6,*) 'N4=',N4
      STOP
      END
