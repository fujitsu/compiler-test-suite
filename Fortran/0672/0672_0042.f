          COMMON ANS(50,4)
          X=1.0
          D=0.1
          DO 100 I= 1,50
          Y1=(X/(EXP(X)-1)+X/2)-((X/2)*(EXP(X)+1)/(EXP(X)-1))
          Y2=(X*(EXP(X)+1)/(2*(EXP(X)-1)))
     1             + X*(EXP(-X)+1)/(2*(EXP(-X)-1))
          Y3=-(X/2)*((EXP(-X)+1)/(EXP(-X)-1))
     1             - X/( EXP(X)-1 ) - X/2
          ANS(I,1) = X
          ANS(I,2) = Y1
          ANS(I,3) = Y2
          ANS(I,4) = Y3
          X = X + D
  100     CONTINUE
          WRITE(6, 900)
  900     FORMAT(1H1, /// )
          WRITE( 6, 910) ((ANS(I,J),J=1,4),I=1,50)
  910     FORMAT( 1H , 5X, 4( E20.7, 3X )  )
          STOP
          END
