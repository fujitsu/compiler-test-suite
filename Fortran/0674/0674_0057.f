      IMPLICIT  REAL*8(A-H,O-Z)
      PARAMETER (NLOOP=500)
      DIMENSION   X(1001), Y(1001)
      DATA  X,Y/1001*1.D0,1001*0.2D0/
      DO 2004 JAX=1,NLOOP
      DO 175 L = 7,107,50
      LW=L
      DO 4 J = 30,870,5
      X(L-1)=X(L-1)-X(LW)*Y(J)
    4 LW=LW+1
      X(L-1)=Y(5)*X(L-1)
 175  CONTINUE
2004  CONTINUE
      WRITE(6,*) (X(I),I=6,106)
      STOP
      END
