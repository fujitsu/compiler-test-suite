       PROGRAM MAIN
       INTEGER * 4 I4A(500),I4B(500),I4C(500),I4S
       REAL    * 4 R4A(500),R4B(500),R4C(500),R4S
       REAL    * 8 R8A(500),R8B(500),R8C(500),R8S
       DATA I4S,R4S,R8S/0,0,0/
       DATA N/499/

      DO 99 I=1,N+1
       I4A(I) = 1
       I4B(I) = 1
       I4C(I) = 1
       R4A(I) = 1
       R4B(I) = 1
       R4C(I) = 1
       R8A(I) = 1
       R8B(I) = 1
       R8C(I) = 1
 99   CONTINUE

      DO 1 I=3,N
        I4A(I+1)=I4A(I)*I4B(I)+I4C(I)*I4A(I)+I4C(I)
        R4A(I)=  R4A(I-1)*R4B(I)*I4C(I)-R8A(I)/R4B(I)
        R8A(I+1)=R8A(I)-R8B(I)-R8C(I)+(R8B(I)+R4B(I))
1     CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A  ###',I4A,R4A,R8A

      DO 2 I=3,N
        I4A(I+1)=I4A(I)*R4B(I)+R8C(I)
        R4A(I) = R4A(I-1)/I4B(I)-R8C(I)
        R8A(I+1)=R8A(I)/I4B(I)-R4C(I)+(R8B(I)+R4B(I))
2     CONTINUE

      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### I4A,R4A,R8A  ###',I4A,R4A,R8A

      STOP
      END
