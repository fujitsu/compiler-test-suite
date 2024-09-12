       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11),I4C(11),I4S
       REAL    * 4 R4A(11),R4B(11),R4C(11),R4S
       REAL    * 8 R8A(11),R8B(11),R8C(11),R8S
       DATA N/10/

      DO 99 I=1,N+1
       I4S = 0
       R4S = 0
       R8S = 0
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

      DO 1 I=1,N
        I4A(I) = I4S * I4B(I)
        I4S = I4A(I) + I4C(I)
        R4A(I) = R4S * R4B(I)
        R4S = R4A(I) + R4C(I)
        R8A(I) = R8S * R8B(I)
        R8S = R8A(I) + R8C(I)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A,I4S,R4A,R4S,R8A,R8S ##'
      WRITE(6,*) I4A,I4S,R4A,R4S,R8A,R8S

      STOP
      END
