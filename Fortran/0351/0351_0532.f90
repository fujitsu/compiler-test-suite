SUBROUTINE SUB(A,B)
  REAL*8 A(1024),B(1024)
!$OMP PARALLEL DO
  DO I=1,1024
     A(I) = A(I) + B(I)
  ENDDO
!$OMP END PARALLEL DO
  RETURN
END SUBROUTINE SUB

PROGRAM MAIN
END PROGRAM MAIN
