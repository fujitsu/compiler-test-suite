      PROGRAM MAIN
      INTEGER IL10(50),IL20(50),IL30(50),NI

      N = 51
      NI = N-1
      DO I=1,50
         IL10(I) = I
         IL20(I) = NI 
         IL30(I) = I+1
         IF ( I.EQ.50 ) IL30(I) = N-1
      ENDDO

      PRINT *,IL10 
      PRINT *,IL20 
      PRINT *,IL30
      END
