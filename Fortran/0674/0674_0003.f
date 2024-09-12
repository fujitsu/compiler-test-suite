      PROGRAM MAIN
      REAL*8 A(20)
      DATA A/20*0/
      CALL SUB(A,10,0)
      PRINT *,A
      STOP
      END

      SUBROUTINE SUB(A,N,L)
      REAL*8 A(N)
      DO 10 I=1,N
        A(I) = 10
   10 CONTINUE
      IF( L.GT.0 ) THEN
        A(1) = 1
      ELSE
        A(1) = -1
      ENDIF
      PRINT*,A
      RETURN
      END
