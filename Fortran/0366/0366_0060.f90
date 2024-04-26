      PARAMETER(N=30)
      REAL R1A(N),R1B(N),R1C(N)
      COMMON /CBLOCK/ R1A,R1B,R1C

      CALL SUB(R1A,R1C,N)
      PRINT *,'OK'
      END

      SUBROUTINE SUB(R1A,R1B,N)
      REAL R1A(N),R1B(N)

      DO 10 I=1,20
         R1A(I) = R1B(I+1) - R1A(I+N-25)
   10 CONTINUE
      RETURN
      END
