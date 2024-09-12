       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11),I4C(11)
       REAL    * 4 R4A(11),R4B(11),R4C(11)
       REAL    * 8 R8A(11),R8B(11),R8C(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = I
       I4C(I) = I
       R4A(I) = I
       R4B(I) = I
       R4C(I) = I
       R8A(I) = I
       R8B(I) = I
       R8C(I) = I
 99   CONTINUE

      DO 1 I=1,N
        I4A(I+1) = I4A(I)*I4B(I)+I4C(I)
        R4A(I+1) = R4A(I)*R4B(I)+R4C(I)
        R8A(I+1) = R8A(I)*R8B(I)+R8C(I)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A    ###',I4A
      WRITE(6,*) '### R4A    ###',R4A
      WRITE(6,*) '### R8A    ###',R8A

      STOP
      END
