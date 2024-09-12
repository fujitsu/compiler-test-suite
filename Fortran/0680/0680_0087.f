       PROGRAM MAIN
       INTEGER * 4 I4A(11,11),I4B(11,11),I4C(11,11),I4S
       REAL    * 4 R4A(11,11),R4B(11,11),R4C(11,11),R4S
       REAL    * 8 R8A(11,11),R8B(11,11),R8C(11,11),R8S
       DATA I4S,R4S,R8S/0,0,0/
       DATA N/10/

      DO 99 I=1,N+1
      DO 99 J=1,N+1
       I4A(I,J) = 1
       I4B(I,J) = 1+1
       I4C(I,J) = 1+1
       R4A(I,J) = 1
       R4B(I,J) = 1+1
       R4C(I,J) = 1+1
       R8A(I,J) = 1
       R8B(I,J) = 1+1
       R8C(I,J) = 1+1
 99   CONTINUE

      DO 1 I=1,N
      DO 1 J=1,N
        I4A(J+1,1)=I4A(J,1)*I4B(J,4)+I4C(J,1)
        R4A(J+1,1)=R4A(J,1)*R4B(J,4)+R4C(J,1)
        R8A(J+1,1)=R8A(J,1)*R8B(J,4)+R8C(J,1)
1     CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A  ###',I4A,R4A,R8A

      STOP
      END
