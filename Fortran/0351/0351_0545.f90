SUBROUTINE BAR(B)
  REAL*8::B
  B = 1
END SUBROUTINE BAR

SUBROUTINE FOO(A,N)
  REAL*8,DIMENSION(1:N)::A
  INTEGER ::I
  DO I=1,N
     CALL BAR(A(I))
  END DO
END SUBROUTINE FOO

PROGRAM MAIN
END PROGRAM MAIN
