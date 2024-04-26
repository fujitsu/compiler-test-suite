      INTEGER*4  I4A/0/
      REAL*4     R4A/0.E0/
      REAL*8     R8A/0.D0/
      COMPLEX*8  C8A/(0.E0,0.E0)/
      COMPLEX*16 C16A/(0.D0,0.D0)/
      LOGICAL    L4A/.FALSE./
      INTEGER*4  I400A(10)/10*111/,I400B(10)/10*3/
      REAL*4     R400A(10)/10*1.E0/,R400B(10)/10*3./
      REAL*8     R800A(10)/10*1.D0/,R800B(10)/10*3./
      COMPLEX*8  C800A(10)/10*(1.E0,1.E0)/
      COMPLEX*8  C800B(10)/10*(3.E0,4.E0)/
      COMPLEX*16 C1600A(10)/10*(1.D0,1.D0)/
      COMPLEX*16 C1600B(10)/10*(4.D0,5.D0)/
      LOGICAL    L400A(10)/5*.TRUE.,5*.FALSE./,L400B(10)/10*.TRUE./

      DO 10 I=1,10
        DO 11 J=1,10
          I4A=I400A(J)
   11   CONTINUE
        DO 12 K=1,10
          I4A=I400B(K)
   12   CONTINUE
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A

      DO 20 I=1,10
        DO 21 J=1,10
          R4A=R400A(J)
   21   CONTINUE
        DO 22 K=1,10
          R4A=R400B(K)
   22   CONTINUE
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A

      DO 30 I=1,10
        DO 31 J=1,10
          R8A=R800A(J)
   31   CONTINUE
        DO 32 K=1,10
          R8A=R800B(K)
   32   CONTINUE
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) R8A

      DO 40 I=1,10
        DO 41 J=1,10
          C8A=C800A(J)
   41   CONTINUE
        DO 42 K=1,10
          C8A=C800B(K)
   42   CONTINUE
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) C8A

      DO 50 I=1,10
        DO 51 J=1,10
          C16A=C1600A(J)
   51   CONTINUE
        DO 52 K=1,10
          C16A=C1600B(K)
   52   CONTINUE
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 5 ***'
      WRITE(6,*) C16A

      DO 60 I=1,10
        DO 61 J=1,10
          L4A=L400A(J)
   61   CONTINUE
        DO 62 K=1,10
          L4A=L400B(K)
   62   CONTINUE
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 6 ***'
      WRITE(6,*) L4A

      STOP
      END
