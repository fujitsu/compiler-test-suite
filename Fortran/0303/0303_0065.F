      IMPLICIT INTEGER*8(A)
      PARAMETER (A1=+2147483649)
      A=A1
      CALL S5(DCMPLX(A ,A ),A )
      CALL S6(DCMPLX(A ,A ),A )
  1   CONTINUE
      END
      SUBROUTINE XXXX
      IMPLICIT REAL(A),DOUBLEPRECISION(B),REAL*16(C)
      IMPLICIT COMPLEX(D),COMPLEX*16(E),COMPLEX*32(F),INTEGER*8(I)
      INTEGER IL
      ENTRY      S5(E1,I8)
      IF(ABS(E1-DCMPLX(I8,I8)).GT.1 ) then 
        write(6,*) "ng1"
      endif
        write(6,*) "ok1"
      RETURN
      ENTRY      S6(E1,I8)
      IF(ABS(E1-DCMPLX(I8,I8)).GT.1 ) then 
        write(6,*) "ng2"
        RETURN
      endif
        write(6,*) "ok2"
      RETURN
      END
