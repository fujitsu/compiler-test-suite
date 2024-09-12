      IMPLICIT COMPLEX*16(C,Z),REAL*8(A-B,D,X)
      DIMENSION  ARY(200),BRY(200),AX(200)
      DATA  ARY/200*1.D0/,CX/(2.0D0,2.D0)/
      DATA  BRY/200*2.D0/,CY/(-2.D0,1.D0)/
      DATA  AX/200*3.D0/,W/3.1D0/
      CE3Y(X)=CX*X+CY+X
      N=100
      DX=0.01
      X=0
      DO 20 I=1,N
      Z=CE3Y(X*W)
      ARY(I)=REAL(Z)
      BRY(I)=IMAG(Z)
      AX(I)=X
      X=X+DX
   20 CONTINUE

      WRITE(6,*) '  ### ARY ### '
      WRITE(6,99) (ARY(I),I=1,N)

      WRITE(6,*) '  ### BRY ### '
      WRITE(6,99) (BRY(I),I=1,N)

      WRITE(6,*) '  ### AX ### '
      WRITE(6,99) (AX(I),I=1,N)

   99 FORMAT(5(1X,D14.7))
      STOP
      END
