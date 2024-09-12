       PROGRAM MAIN
       INTEGER * 4 I4A(100),I4B(100),I4C(100)
       REAL    * 4 R4A(100),R4B(100),R4C(100)
       REAL    * 8 R8A(100),R8B(100),R8C(100)
       DATA N/100/

      DO 99 I=1,N
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

      DO 1 I=5,N-10
        I4A(I+5) = I4A(I+4) * I4B(I) + I4C(I)
        I4A(I+4) = I4A(I+3) * I4B(I) + I4C(I)
        I4A(I+3) = I4A(I+2) * I4B(I) + I4C(I)
        I4A(I+2) = I4A(I+1) * I4B(I) + I4C(I)
        I4A(I+1) = I4A(I  ) * I4B(I) + I4C(I)
        I4A(I  ) = I4A(I-1) * I4B(I) + I4C(I)
        R4A(I+5) = R4A(I+4) / R4B(I) + R4C(I)
        R4A(I+4) = R4A(I+3) / R4B(I) + R4C(I)
        R4A(I+3) = R4A(I+2) / R4B(I) + R4C(I)
        R4A(I+2) = R4A(I+1) / R4B(I) + R4C(I)
        R4A(I+1) = R4A(I  ) / R4B(I) + R4C(I)
        R4A(I  ) = R4A(I-1) / R4B(I) + R4C(I)
        R8A(I+5) = R8A(I+4) / R8B(I) + R8C(I)
        R8A(I+4) = R8A(I+3) / R8B(I) + R8C(I)
        R8A(I+3) = R8A(I+2) / R8B(I) + R8C(I)
        R8A(I+2) = R8A(I+1) / R8B(I) + R8C(I)
        R8A(I+1) = R8A(I  ) / R8B(I) + R8C(I)
        R8A(I  ) = R8A(I-1) / R8B(I) + R8C(I)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A ###',I4A,R4A,R8A

      STOP
      END
