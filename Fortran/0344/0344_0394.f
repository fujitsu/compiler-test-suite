      INTEGER*4  I4A/1/,I4B/2/
      REAL*4     R4A/1.E0/,R4B/2.E0/
      REAL*8     R8A/3.D0/,R8B/4.D0/
      COMPLEX*8  C8A/(7.E0,8.E0)/,C8B/(9.E0,10.E0)/
      COMPLEX*16 C16A/(11.D0,12.D0)/,C16B/(13.D0,14.D0)/
      LOGICAL    L4A/.TRUE./,L4B/.FALSE./
      INTEGER*4  I400A(10)/10*0/
      REAL*4     R400A(10)/10*0.E0/
      REAL*8     R800A(10)/10*0.D0/
      COMPLEX*8  C800A(10)/10*(0.E0,0.E0)/
      COMPLEX*8  C800B(10)/10*(0.E0,0.E0)/
      COMPLEX*16 C1600A(10)/10*(0.D0,0.D0)/
      LOGICAL    L400A(10)/10*.FALSE./

      DO 10 I=1,10
        IF(I4B.LT.0) THEN
          I4A=I400A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A
      WRITE(6,*) I4B

      DO 20 I=1,10
        IF(R400A(I).GT.100) THEN
          R4A=R4B-R400A(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A
      WRITE(6,*) R4B

      DO 30 I=1,10
        IF(R8B.GT.100) THEN
          R8A=R8B*R800A(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) R8A
      WRITE(6,*) R8B

      DO 40 I=1,10
        IF(C800B(I).EQ.100) THEN
          C8A=C8B/C800A(I)
        ENDIF
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) C8A
      WRITE(6,*) C8B

      DO 50 I=1,10
        IF(C16B.EQ.1000) THEN
          C16A=C16B+C1600A(I)
        ENDIF
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 5 ***'
      WRITE(6,*) C16A
      WRITE(6,*) C16B

      DO 60 I=1,10
        IF(L4B) THEN
          L4A=L4B.AND.L400A(I)
        ENDIF
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 6 ***'
      WRITE(6,*) L4A
      WRITE(6,*) L4B

      STOP
      END
