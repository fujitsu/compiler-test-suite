      N1 = 10
      CALL SUB(N1)
      N2 = 9
      CALL SUB(N2)
      STOP
      END
C
      SUBROUTINE SUB(N)
      REAL * 4 A(10),B(10),C(10),D(10)
      INTEGER * 4 L(10)
      DATA L/10*0/
      data a/10*0.0/
      DATA D/0.,0.,1.,1.,1.,2.,3.,0.,1.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
C
      DO 10 I=1,N
        L(I)=INT(B(I))
        IF (L(I).GT.0) THEN
          A(I)=A(I)+FLOAT(L(I))+C(I)-D(I)
        ENDIF
10    CONTINUE
C
      WRITE(6,*) '# SUB #'
      WRITE(6,1) A
 1    format(5e14.6)
C
      DO 20 I=1,N
        A(I)=A(I)+I
        IF (I.LT.5) GOTO 21
        NN=I
        CALL SUB2(NN)
21      A(I)=A(I)+B(I)*I
20    CONTINUE
C
      WRITE(6,*) ' # SUB #'
      WRITE(6,1) A
      RETURN
      END
C
      SUBROUTINE SUB2(N)
      REAL * 4 A(10),B(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
C
      DO 30 I=1,N
30      B(I)=SIN(B(I))+A(I)
C
      WRITE(6,*) '# SUB2 #'
      WRITE(6,*) '# VL = ',N
      WRITE(6,1) B
 1    format(5e14.6)
      RETURN
      END
