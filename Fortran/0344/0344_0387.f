      INTEGER*4  I400A(10,10,5),I4A/0/
      REAL*4     R400A(10,10,5),R4A/0/
      REAL*8     R800A(10,10,5),R8A/0/
      COMPLEX*8  C800A(10,10,5),C8A/0/
      COMPLEX*16 C1600A(10,10,5),C16A/0/
      LOGICAL*4  L400A(10,10,5),L4A/.TRUE./
      DATA      I400A/499*1,9/
      DATA      R400A/499*1,8/
      DATA      R800A/499*1,7/
      DATA      C800A/499*(1.,2.),(6.,7.)/
      DATA      C1600A/(1.,2.),499*(9.,9.)/
      DATA      L400A/498*.TRUE.,.FALSE.,.TRUE./

      DO 10 I=1,10
        DO 10 J=1,10
          DO 10 K=1,5
            I4A=I400A(I,J,K)
            R4A=R400A(I,J,K)
            R8A=R800A(I,J,K)
            C8A=C800A(I,J,K)
            C16A=C1600A(I,J,K)
            L4A=L400A(I,J,K)
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A
      WRITE(6,*) R4A
      WRITE(6,*) R8A
      WRITE(6,*) C8A
      WRITE(6,*) C16A
      WRITE(6,*) L4A
      STOP
      END
