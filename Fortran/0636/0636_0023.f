      LOGICAL*4 L1(10,10),L2(10,10)
      REAL*4 W(10,10),X(10,10)
      REAL*4 Y(10,10),Z(10,10)
      DATA M,N/10,10/
      CALL INIT(L1,L2,W,X,Y,Z)
      DO 10 J=1,M
        DO 10 I=1,N
          IF( L1(I,J) ) THEN
            T = W(I,J) + X(I,J)
            X(I,J) = X(I,J) + T
          ENDIF
          IF( L2(I,J) ) THEN
            Z(I,J) = W(I,J) + X(I,J)
          ENDIF
 10   CONTINUE
      PRINT *,' X = ',X,' Z = ',Z
      STOP
      END
      SUBROUTINE INIT(L1,L2,W,X,Y,Z)
      LOGICAL*4 L1(10,10),L2(10,10),F,T
      REAL*4 H
      REAL*4 W(10,10),X(10,10)
      REAL*4 Y(10,10),Z(10,10)
      PARAMETER (H=50,F=.FALSE.,T=.TRUE.)
      WW = 1.0
      XX = 2.0
      YY = 3.0
      ZZ = 4.0
      DO 10 J=1,10
        DO 10 I=1,10
          IF( J+I .LT. H) THEN
            L1(I,J) = T
            L2(I,J) = F
          ELSE
            L1(I,J) = T
            L2(I,J) = F
          ENDIF
 10   CONTINUE
      DO 20 J=1,10
        DO 20 I=1,10
          W(I,J) = WW
          X(I,J) = XX
          Y(I,J) = YY
          Z(I,J) = ZZ
 20   CONTINUE
      RETURN
      END
