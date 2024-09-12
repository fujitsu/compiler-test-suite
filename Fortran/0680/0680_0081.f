       PROGRAM MAIN
       INTEGER * 4 I4A(100),I4B(100),I4C(100)
       REAL    * 4 R4A(100),R4B(100),R4C(100)
       REAL    * 8 R8A(100),R8B(100),R8C(100)
       DATA N/100/

      DO 99 I=1,N
       I4A(I) = 3.
       I4B(I) = 2.
       I4C(I) = 1.
       R4A(I) = 3.
       R4B(I) = 2.
       R4C(I) = 1.
       R8A(I) = 3.
       R8B(I) = 2.
       R8C(I) = 1.
 99   CONTINUE

      DO 1 I=1,N
        I4A(1) = I4A(1) * I4B(I)+I4C(I)
        R4A(1) = R4A(1) * R4B(I)+R4C(I)
        R8A(1) = R8A(1) * R8B(I)+R8C(I)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A ###',I4A,R4A,R8A

      STOP
      END
