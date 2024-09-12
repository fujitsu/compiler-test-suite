       PROGRAM MAIN
       INTEGER * 4 I4S    ,I4B(11),I4C(11)
       REAL    * 4 R4S    ,R4B(11),R4C(11)
       REAL    * 8 R8S    ,R8B(11),R8C(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4S    = I
       I4B(I) = 3
       I4C(I) = I4B(I)+1
       R4S    = I
       R4B(I) = 3.
       R4C(I) = R4B(I)+1
       R8S    = I
       R8B(I) = 3.
       R8C(I) = R8B(I)+1
 99   CONTINUE

      DO 1 I=1,N
        I4S      = I4B(I)*I4S   +I4C(I)
 1    CONTINUE
      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S

      DO 2 I=1,N
        R4S      = R4B(I)*R4S   +R4C(I)
 2    CONTINUE
      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### SIMPLE ###',R4S

      DO 3 I=1,N
        R8S      = R8B(I)*R8S   +R8C(I)
 3    CONTINUE
      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### SIMPLE ###',R8S

      STOP
      END
