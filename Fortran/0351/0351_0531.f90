SUBROUTINE SUB(A,B,C)
  REAL*8 A(1024),B(1024),C(1024)
  DO I=1,1024
     A(I) = B(I)
     C(I) = B(I)
  ENDDO
  RETURN
END SUBROUTINE SUB

PROGRAM MAIN
END PROGRAM MAIN
