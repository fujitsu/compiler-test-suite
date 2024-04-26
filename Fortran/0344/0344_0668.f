      REAL*4  A(20),B(20),C(20)
      REAL*4  D(20),E(20),F(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  D/20*3./,E/20*4./,F/20*5./
      DATA  X/20*1.0/,Y/20*2.0/,Z/20*3.0/
      S=0.

      DO 10 I=2,19
        T1 = A(I) + B(I)
        A(I+1) = D(I)*C(I)
  10  CONTINUE

      DO 20 I=2,19
        S = S + D(I)+SQRT(E(I))
        F(I) = S * F(I)*SIN(X(I))
   20 CONTINUE
      WRITE(6,*) ' S= ',S

      DO 30 I=1,15
        C(I) = D(I) + D(I+1) * A(I)
        T1 = C(I+1) + B(I)
        T2 = T1 - X(I)
        D(I+1) = Y(I) - T2
  30  CONTINUE

      DO 40 I=10,19
        X(I) = Z(I+1) + Z(I-1)
        Y(I) = X(I) - Z(I)
        Z(I) = X(I+1) + Y(I)
  40  CONTINUE
      WRITE(6,*) ' ** A ** '
      WRITE(6,600) A
      WRITE(6,*) ' ** C ** '
      WRITE(6,600) C
      WRITE(6,*) ' ** D ** '
      WRITE(6,600) D
      WRITE(6,*) ' ** F ** '
      WRITE(6,600) F
      WRITE(6,*) ' ** X ** '
      WRITE(6,600) X
      WRITE(6,*) ' ** Y ** '
      WRITE(6,600) Y
      WRITE(6,*) ' ** Z ** '
      WRITE(6,600) Z
 600  FORMAT(1H ,4(5(E15.4,1X),/ ,1X))
      STOP
      END
