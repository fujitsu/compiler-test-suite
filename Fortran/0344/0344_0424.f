      PROGRAM MAIN
      INTEGER*8 I800B(100),I800C(100),I8A/16/
      INTEGER*4 I400A(100),I4A/2/,I400B(100)
      LOGICAL   L400A(100),L400C(100),L400D(100)/100*.FALSE./
      DATA    I800B/100*20/,I800C/100*0/,I400A/100*0/
      DATA    I400B/1,4,1,3,1,2,1,1,1,5,90*0/
C
      
      DO 11 I=1,100
   11   I400B(I) = MOD(I,20)
C
      DO 10 I=1,100
        IF(I400A(I).GT.0) THEN
          L400A(I) = BTEST(I800B(I),I400A(I))
        ELSE
          L400A(I) = BTEST(I800B(I),I400B(I))
        ENDIF
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) L400A
      WRITE(6,*) ' '
C
      DO 20 I=1,100
        IF(I4A.EQ.2) THEN
          L400C(I) = BTEST(I800B(I),I4A)
        ELSE
          L400C(I) = NOT(I800C(I)).GT.I800C(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) L400C
      WRITE(6,*) ' '
C
      DO 30 I=1,100
        IF(I400B(I)+1) 31,30,30
   31   L400D(I) = BTEST(I8A,I400B(I))
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) L400D
      STOP
      END
