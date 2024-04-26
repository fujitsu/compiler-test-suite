      INTEGER*8 I800A(10),I800B(10),I800C(10),I800D(10),
     &          I8A/16/
      INTEGER*4 I400A(10),I4A/2/,I400B(10)
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*0/,I800D/10*0/
      DATA    I400A/10*0/
      DATA    I400B/1,1,0,-2,-1,1,1,1,0,0/
C
      DO 10 I=1,10
        IF(I400A(I).GT.0) THEN
          I800A(I) = ISHFT(I800B(I),I400A(I))
        ELSE
          I800A(I) = ISHFT(I800B(I),I400B(I))
        ENDIF
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        IF(I4A.EQ.2) THEN
          I800C(I) = ISHFT(I800B(I),I4A)
        ELSE
          I800C(I) = NOT(I800C(I))
        ENDIF
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800C
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        IF(I400B(I)+1) 31,30,30
   31   I800D(I) = ISHFT(I8A,I400B(I))
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I800D
      STOP
      END
