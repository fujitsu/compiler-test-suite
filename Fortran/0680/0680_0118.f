       PROGRAM MAIN
       INTEGER * 4 I4S,I4SS ,I4B(11),I4C(11)
       REAL    * 4 R4S,R4SS ,R4B(11),R4C(11)
       REAL    * 8 R8S,R8SS ,R8B(11),R8C(11)
       DATA I4S,R4S,R8S/0,0,0/
       DATA I4SS,R4SS,R8SS/0,0,0/
       DATA N/10/

      DO 99 I=1,N+1
       I4B(I) = I
       I4C(I) = I4B(I)
       R4B(I) = I
       R4C(I) = R4B(I)
       R8B(I) =I
       R8C(I) = R8B(I)
 99   CONTINUE

      DO 1 I=1,N
        I4S = I4S * I4B(I) + I4C(I)
        I4SS= I4SS* I4B(I) + I4C(I)
        R4S = R4S * R4B(I) + R4C(I)
        R4SS= R4SS* R4B(I) + R4C(I)
        R8S = R8S * R8B(I) + R8C(I)
        R8SS= R8SS* R8B(I) + R8C(I)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### SIMPLE ###',I4S,I4SS
      WRITE(6,*) '### SIMPLE ###',R4S,R4SS
      WRITE(6,*) '### SIMPLE ###',R8S,R8SS

      STOP
      END
