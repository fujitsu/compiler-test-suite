       PROGRAM MAIN
       INTEGER * 4 I4S    ,I4B(11),I4C(11),I4D(11)
       REAL    * 4 R4S    ,R4B(11),R4C(11),R4D(11)
       REAL    * 8 R8S    ,R8B(11),R8C(11),R8D(11)
       DATA I4S,R4S,R8S/2,3,2/
       DATA N/10/

      DO 99 I=1,N+1
       I4B(I) = I
       I4C(I) = I*2
       I4D(I) = I
       R4B(I) = I
       R4C(I) = I*2
       R4D(I) = I
       R8B(I) = I
       R8C(I) = I*2
       R8D(I) = I
 99   CONTINUE

      DO 1 I=1,N
        I4S = I4C(I) - I4S    * I4B(I)
        I4D(I) = I4S
        R4S = R4C(I) - R4S * R4B(I)
        R4D(I) = R4S
        R8S = R8C(I) - R8S * R8B(I)
        R8D(I) = R8S
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S,I4D
      WRITE(6,*) '### SIMPLE ###',R4S,R4D
      WRITE(6,*) '### SIMPLE ###',R8S,R8D

      STOP
      END
