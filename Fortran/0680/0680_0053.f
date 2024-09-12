       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11)
       REAL    * 4 R4A(11),R4B(11)
       REAL    * 8 R8A(11),R8B(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = I4A(I)+1
       R4A(I) = I
       R4B(I) = R4A(I)+1
       R8A(I) = I
       R8B(I) = R8A(I)+1
 99   CONTINUE

      DO 1 I=1,N
        I4A(I+1) = I4A(I) * I4B(I)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### ARRAY  ###',I4A

      DO 2 I=1,N
        R4A(I+1) = R4A(I) * R4B(I)
 2    CONTINUE

      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### ARRAY  ###',R4A

      DO 3 I=1,N
        R8A(I+1) = R8A(I) * R8B(I)
 3    CONTINUE

      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### ARRAY  ###',R8A

      STOP
      END
