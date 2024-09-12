       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11),I4C(11),I4D(11),I4E(11),I4F(11)
       REAL    * 4 R4A(11),R4B(11),R4C(11),R4D(11),R4E(11),R4F(11)
       REAL    * 8 R8A(11),R8B(11),R8C(11),R8D(11),R8E(11),R8F(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = I
       I4C(I) = I
       I4D(I) = I
       I4E(I) = I
       I4F(I) = I
       R4A(I) = I
       R4B(I) = I
       R4C(I) = I
       R4D(I) = I
       R4E(I) = I
       R4F(I) = I
       R8A(I) = I
       R8B(I) = I
       R8C(I) = I
       R8D(I) = I
       R8E(I) = I
       R8F(I) = I
 99   CONTINUE

      DO 1 I=2,N
        I4A(I)=I4A(I-1)*I4A(I-1)+I4C(I)
        I4C(I)=I4C(I-1)*I4A(I)+I4C(I-1)
        R4A(I)=R4A(I-1)*R4A(I-1)-R4C(I)
        R4C(I)=R4C(I-1)*R4B(I)+R4C(I-1)
        R8A(I)=R8A(I-1)*R8A(I-1)-R8C(I)
        R8C(I)=R8C(I-1)*R8B(I)+R8C(I-1)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### ARRAY  ###',I4A,I4C
      WRITE(6,*) '### ARRAY  ###',R4A,R4C
      WRITE(6,*) '### ARRAY  ###',R8A,R8C

      DO 2 I=2,N
        I4D(I)=I4D(I-1)*I4D(I  )+I4F(I)
        I4F(I)=I4F(I-1)*I4D(I)+I4F(I-1)
        R4D(I)=R4D(I-1)*R4D(I  )-R4F(I)
        R4F(I)=R4F(I-1)*R4E(I)+R4F(I-1)
        R8D(I)=R8D(I-1)*R8D(I  )-R8F(I)
        R8F(I)=R8F(I-1)*R8E(I)+R8F(I-1)
 2    CONTINUE

      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### ARRAY  ###',I4D,I4F
      WRITE(6,*) '### ARRAY  ###',R4D,R4F
      WRITE(6,*) '### ARRAY  ###',R8D,R8F

      STOP
      END
