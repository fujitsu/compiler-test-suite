      INTEGER*4  I4A/1/
      REAL*4     R4A/3.E0/
      REAL*8     R8A/5.D0/
      COMPLEX*8  C8A/(7.E0,8.E0)/
      COMPLEX*16 C16A/(11.D0,12.D0)/
      LOGICAL    L4A/.TRUE./
      INTEGER*4  I400A(10)/10*111/,I400B(10)/10*0/
      REAL*4     R400A(10)/10*2.E0/,R400B(10)/10*0./
      REAL*8     R800A(10)/10*3.D0/,R800B(10)/10*0./
      COMPLEX*8  C800A(10)/10*(5.E0,1.E0)/
      COMPLEX*8  C800B(10)/10*(0.E0,0.E0)/
      COMPLEX*16 C1600A(10)/10*(0.D0,2.D0)/
      COMPLEX*16 C1600B(10)/10*(0.D0,0.D0)/
      LOGICAL    L400A(10)/5*.TRUE.,5*.FALSE./,L400B(10)/10*.TRUE./

      DO 10 I=1,10
        I4A=I400A(I)
        DO 10 J=1,10
          I400B(J)=I4A
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A

      DO 20 I=1,10
        R4A=R400A(I)
        DO 20 J=1,10
          R400B(J)=R4A
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A

      DO 30 I=1,10
        R8A=R800A(I)
        DO 30 J=1,10
          R800B(J)=R8A
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) R8A

      DO 40 I=1,10
        C8A=C800A(I)
        DO 40 J=1,10
          C800B(J)=C8A
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) C8A

      DO 50 I=1,10
        C16A=C1600A(I)
        DO 50 J=1,10
          C1600B(J)=C16A
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 5 ***'
      WRITE(6,*) C16A

      DO 60 I=1,10
        L4A=L400A(I)
        DO 60 J=1,10
          L400B(J)=L4A
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 6 ***'
      WRITE(6,*) L4A

      STOP
      END
