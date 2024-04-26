      REAL B(10),C(10)
      INTEGER I,A(10)
      DATA A/10*3/,B/10*1.0/,C/10*2.0/
      I = 5
      CALL SUB1(A(I),I)
      CALL SUB2(C,B,C)
      STOP
      END
C
      SUBROUTINE SUB1(K,J)
      INTEGER J,K,L
      J = 10
      L = K
      WRITE(6,*) J,L
      RETURN
      END
C
      SUBROUTINE SUB2(X,Y,Z)
      REAL X(10),Y(10),Z(10)
      DO 1 I=1,10
    1 Y(I) = X(I) / Z(I)
      WRITE(6,*) Y
      RETURN
      END
