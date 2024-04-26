      DATA N/7/
      CALL SUB1(N)
      STOP
      END
C
      SUBROUTINE SUB1(N)
      DIMENSION A(10)
      DO 10 I=1,10
        A(I)=N
   10 CONTINUE
      WRITE(6,*) A
      RETURN
      END
