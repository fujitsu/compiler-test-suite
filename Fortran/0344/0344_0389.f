      INTEGER*4  I4A/1/
      REAL*4     R4A/3.E0/
      REAL*8     R8A/5.D0/
      COMPLEX*8  C8A/(7.E0,8.E0)/
      COMPLEX*16 C16A/(11.D0,12.D0)/
      LOGICAL    L4A/.TRUE./
      INTEGER*4  I400A(10)/10*111/
      REAL*4     R400A(10)/10*2.E0/
      REAL*8     R800A(10)/10*3.D0/
      COMPLEX*8  C800A(10)/10*(5.E0,1.E0)/
      COMPLEX*16 C1600A(10)/10*(0.D0,2.D0)/
      LOGICAL    L400A(10)/5*.TRUE.,5*.FALSE./

      DO 10 I=1,10
        I400A(I)=I4A
        DO 11 J=1,10
          I4A=I400A(J)
   11 CONTINUE
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A

      DO 20 I=1,10
        R400A(I)=R4A
        DO 21 J=1,10
          R4A=R400A(J)
   21 CONTINUE
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A

      DO 30 I=1,10
        R800A(I)=R8A
        DO 31 J=1,10
          R8A=R800A(J)
   31 CONTINUE
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) R8A

      DO 40 I=1,10
        C800A(I)=C8A
        DO 41 J=1,10
          C8A=C800A(J)
   41 CONTINUE
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) C8A

      DO 50 I=1,10
        C1600A(I)=C16A
        DO 51 J=1,10
          C16A=C1600A(J)
   51 CONTINUE
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 5 ***'
      WRITE(6,*) C16A

      DO 60 I=1,10
        L400A(I)=L4A
        DO 61 J=1,10
          L4A=L400A(J)
   61 CONTINUE
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 6 ***'
      WRITE(6,*) L4A

      STOP
      END
