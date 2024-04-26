      REAL A(10),B(10),C(10)
      INTEGER D(10),E(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,1./
      DATA B/5*2.,5*3./
      DATA C/10*5./
      DATA E/10*4/

      CALL SUB(M)

      DO 10 I=1,M
        D(I)=E(I)+I
        A(I)=A(I)+B(I)*C(I)
   10 CONTINUE
      WRITE(6,1) A
      WRITE(6,2) D
 1    FORMAT(5F10.5)
 2    FORMAT(5I5)
      STOP
      END
      SUBROUTINE SUB(M)
      INTEGER * 4 M
      M=10
      RETURN
      END
