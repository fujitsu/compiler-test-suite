      INTEGER*4  I4A/777/
      REAL*4     R4A/777.E0/
      REAL*8     R8A/777.D0/
      COMPLEX*8  C8A/(777.E0,888.E0)/
      COMPLEX*16 C16A/(777.D0,888.D0)/
      LOGICAL    L4A/.TRUE./
      INTEGER*4  I400A(10)/10*111/
      REAL*4     R400A(10)/10*2.E0/
      REAL*8     R800A(10)/10*3.D0/
      COMPLEX*8  C800A(10)/10*(5.E0,1.E0)/
      COMPLEX*16 C1600A(10)/10*(0.D0,2.D0)/
      LOGICAL    L400A(10)/10*.FALSE./

      DO 10 I=1,10
        IF(I400A(I).EQ.100) THEN
          I4A=I400A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A

      DO 20 I=1,10
        IF(I400A(I).EQ.100) THEN
          R4A=R400A(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A

      DO 30 I=1,10
        IF(I400A(I).EQ.100) THEN
          R8A=R800A(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) R8A

      DO 40 I=1,10
        IF(I400A(I).EQ.100) THEN
          C8A=C800A(I)
        ENDIF
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) C8A

      DO 50 I=1,10
        IF(I400A(I).EQ.100) THEN
          C16A=C1600A(I)
        ENDIF
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 5 ***'
      WRITE(6,*) C16A

      DO 60 I=1,10
        IF(I400A(I).EQ.100) THEN
          L4A=L400A(I)
        ENDIF
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 6 ***'
      WRITE(6,*) L4A

      STOP
      END
