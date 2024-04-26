      PROGRAM MAIN
      INTEGER A,B(5)
      CHARACTER C*7
      NAMELIST /NAM/A,B,C
      WRITE(6,*)'#### START ####'
      A=10
      DO 10 I=1,5
   10   B(I)=10
      C='FORTRAN'
      WRITE(6,NAM)
      WRITE(6,*)'####  END  ####'
      END
