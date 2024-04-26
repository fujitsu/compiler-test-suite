      REAL*8 A(10)/1,2,3,4,5,6,7,8,9,10/,B(10)
      INTEGER J/10/
C
      DO 100 I = 1,10
        B(J) =C(A(J))
        IF(B(J).LE.0) B(J) = 0
        J =J-1
 100  CONTINUE
      WRITE(6,1000) B
 1000 FORMAT(F22.5)
      STOP
      END
      FUNCTION C(T)
      REAL*8 T
      C=T**T
      RETURN
      END
