      REAL*4 A(20),B(20),C(20)
      REAL*4 X(20,20),Y(20,20),Z(20,20)
      DATA A,B,C/20*1.,20*2.,20*3./,X,Y,Z/1200*1./
      S=1.
      DO 10 I=3,20
        T=A(I)+B(I)
        S=S*C(I)+S
        A(I)=T+C(I)
        DO 20 J=1,20
          X(I,J)=Y(I,J)+Z(I,J)
  20    CONTINUE
        A(I)=T+S+C(I)
        B(I)=X(I,1)+T
        DO 21 J=3,20
          X(I,J)=X(I,J-2)-Y(I,J)+Z(I,J)*B(I)
  21    CONTINUE
        A(I)=A(I)+MAX(T,S)
  10  CONTINUE
      WRITE(6,*) ' S= ',S
      WRITE(6,600) A
      WRITE(6,600) B
      WRITE(6,600) X
 600  FORMAT(1H ,6(E13.6))
      STOP
      END
