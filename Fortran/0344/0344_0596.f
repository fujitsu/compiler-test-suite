      COMMON /BLK/ X(20,20,20),Y(20,20,20),Z(20,20,20)
      REAL*4  A(20),B(20),C(20)
      DATA  A,B,C/60*1./
      DO 10 I=1,20
        A(I)=B(I)+SIN(C(I))
        CALL  SUB1
        CALL  SUB2(A(I),B(I))
        CALL  SUB3
  10  CONTINUE
      WRITE(6,*) A,X
      STOP
      END
      SUBROUTINE SUB1
      COMMON /BLK/ X(20,20,20),Y(20,20,20),Z(20,20,20)
      DO 10 K=1,20
       DO 10 J=1,20
        DO 10 I=1,20
          X(I,J,K)=1.
          Y(I,J,K)=2.
          Z(I,J,K)=3.
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(O,P)
      COMMON /BLK/ X(20,20,20),Y(20,20,20),Z(20,20,20)
        O=O+P
        DO 20 J=2,17
         DO 20 K=2,19
          DO 20 L=2,18
            X(L,K,J)=Y(L,K,J)*Z(L,K,J)
  20    CONTINUE
      RETURN
      END
      SUBROUTINE SUB3
      COMMON /BLK/ X(20,20,20),Y(20,20,20),Z(20,20,20)
        DO 20 J=1,20
         DO 20 K=1,20
          DO 20 L=1,20
            X(L,K,J)=X(L,K,J)+Z(L,K,J)
  20    CONTINUE
      RETURN
      END
