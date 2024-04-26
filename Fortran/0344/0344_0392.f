      INTEGER*4  I400A(10,10,5),I4A/0/
      REAL*4     R400A(10,10,5),R4A/0/
      COMPLEX*8  C800A(10,10,5),C8A/0/
      LOGICAL*4  L400A(10,10,5),L4A/.FALSE./
      DATA      I400A/499*1,9/
      DATA      R400A/499*1,8/
      DATA      C800A/499*(1.,2.),(6.,7.)/
      DATA      L400A/498*.TRUE.,.FALSE.,.TRUE./
      INTEGER*4  I400B(10,10,5)
      REAL*4     R400B(10,10,5)
      COMPLEX*8  C800B(10,10,5)
      LOGICAL*4  L400B(10,10,5)
      DATA      I400B/499*5,2/
      DATA      R400B/499*5,2/
      DATA      C800B/499*(5.,5.),(5.,5.)/
      DATA      L400B/255*.TRUE.,245*.FALSE./

      DO 10 I=1,10
        I4A=I400A(I,1,1)
        DO 11 J=1,10
          I4A=I400B(I,J,1)
          DO 12 K=1,5
            I4A=I400A(I,J,K)
   12 CONTINUE
   11 CONTINUE
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A

      DO 20 I=1,10
        R4A=R400A(I,1,1)
        DO 21 J=1,10
          R4A=R400B(I,J,1)
          DO 22 K=1,5
            R4A=R400A(I,J,K)
   22 CONTINUE
   21 CONTINUE
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A

      DO 30 I=1,10
        C8A=C800A(I,1,1)
        DO 31 J=1,10
          C8A=C800B(I,J,1)
          DO 32 K=1,5
            C8A=C800A(I,J,K)
   32 CONTINUE
   31 CONTINUE
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) C8A

      DO 40 I=1,10
        L4A=L400A(I,1,1)
        DO 41 J=1,10
          L4A=L400B(I,J,1)
          DO 42 K=1,5
            L4A=L400A(I,J,K)
   42 CONTINUE
   41 CONTINUE
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) L4A

      STOP
      END
