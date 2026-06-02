REAL*4 :: A4(16),B4(16),S4(16)
REAL*8 :: A8(16),B8(16),S8(16)

DO I=1,16
   A4(I) = (-1) ** I * I * 2
   B4(I) = (-1) ** I
   A8(I) = (-1) ** I * I * 2
   B8(I) = (-1) ** I
END DO

DO I=1,16
   S4(I)=SIGN(A4(I),B4(I))
END DO
PRINT *,S4

DO I=1,16
   S8(I)=SIGN(A8(I),B8(I))
END DO
PRINT *,S8

END PROGRAM
