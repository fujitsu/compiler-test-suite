      IMPLICIT REAL*8(A-H,O-Z)
      PARAMETER(OMEGA=0.55D0)
      COMMON /PRESS/ PSI(-1:102,-1:32,-1:32)
       PSI=2
       RESD1=0.D0

       DO 318 J=29,1,-2
       DO 318 K=29,1,-2
       DO 318 I=99,1,-1
          PSI(I,J,K)=PSI(I,J,K)+PSI(I+1,J,K)
          RESD1=MAX(RESD1,OMEGA)
 318   CONTINUE
       PRINT*, PSI(1,1,1)
       PRINT*, RESD1
       END
