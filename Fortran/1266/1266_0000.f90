COMPLEX*16 A(8),B(8),C(8),ANS(8)

DO I=1,8
   A(I) = CMPLX(I+1,I+2)
   B(I) = CMPLX(I+3,I+4)
   C(I) = CMPLX(I+5,I+6)
ENDDO

DO I=1,8 
   ANS(I) = A(I) * B (I)
ENDDO
PRINT *,ANS

DO I=1,8 
   ANS(I) = C(I) - A(I) * B(I)
ENDDO
PRINT *,ANS

DO I=1,8 
   ANS(I) = A(I) * B(I) + C(I)
ENDDO
PRINT *,ANS

END PROGRAM
