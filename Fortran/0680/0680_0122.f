       PROGRAM MAIN
       INTEGER * 4 I4A1(11),I4B1(11),I4C1(11),I4S1
       INTEGER * 4 I4A2(11),I4B2(11),I4C2(11),I4S2
       REAL    * 4 R4A1(11),R4B1(11),R4C1(11),R4S1
       REAL    * 4 R4A2(11),R4B2(11),R4C2(11),R4S2
       REAL    * 8 R8A1(11),R8B1(11),R8C1(11),R8S1
       REAL    * 8 R8A2(11),R8B2(11),R8C2(11),R8S2
       DATA N/10/

      DO 99 I=1,N+1
       I4A1(I) = I
       I4A2(I) = I
       I4B1(I) = I
       I4B2(I) = I
       I4C1(I) = I
       I4C2(I) = I
       R4A1(I) = I
       R4A2(I) = I
       R4B1(I) = I
       R4B2(I) = I
       R4C1(I) = I
       R4C2(I) = I
       R8A1(I) = I
       R8A2(I) = I
       R8B1(I) = I
       R8B2(I) = I
       R8C1(I) = I
       R8C2(I) = I
 99   CONTINUE

      I4S1 = 2
      I4S2 = 2
      R4S1 = 2.
      R4S2 = 2.
      R8S1 = 2.
      R8S2 = 2.

      DO 1 I=1,N
        I4A1(I+1) = I4A1(I)*I4B1(I)-I4C1(I)
        R4A1(I+1) = R4A1(I)*R4B1(I)-R4C1(I)
        R8A1(I+1) = R8A1(I)*R8B1(I)-R8C1(I)
        I4A2(I+1) = I4A2(I)*I4B2(I)-I4S2
        R4A2(I+1) = R4A2(I)*R4B2(I)-R4S2
        R8A2(I+1) = R8A2(I)*R8B2(I)-R8S2
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A1,R4A1,R8A1   ###',I4A1,R4A1,R8A1
      WRITE(6,*) '### I4A2,R4A2,R8A2   ###',I4A2,R4A2,R8A2

      STOP
      END
