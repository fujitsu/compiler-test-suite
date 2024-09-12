       PROGRAM MAIN
       INTEGER * 4 I4A1(11),I4B1(11),I4C1(11),I4S1
       REAL    * 4 R4A1(11),R4B1(11),R4C1(11),R4S1
       REAL    * 8 R8A1(11),R8B1(11),R8C1(11),R8S1
       DATA N/10/

      DO 99 I=1,N+1
       I4A1(I) = I
       I4B1(I) = I
       I4C1(I) = I
       R4A1(I) = I
       R4B1(I) = I
       R4C1(I) = I
       R8A1(I) = I
       R8B1(I) = I
       R8C1(I) = I
 99   CONTINUE

      I4S1 = 2
      R4S1 = 2.
      R8S1 = 2.

      DO 1 I=1,N
        I4A1(I+1) = I4A1(I)+I4B1(I)+I4C1(1)
        R4A1(I+1) = R4A1(I)+R4B1(I)+R4C1(2)
        R8A1(I+1) = R8A1(I)+R8B1(I)+R8C1(3)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A1,R4A1,R8A1   ###',I4A1,R4A1,R8A1

      STOP
      END
