      REAL*8 A(10,10)/100*0/
      REAL*8 B(10,10)/100*0/
      REAL*8 C(10,10)/100*0/
      COMPLEX*8 D(10,10)/100*(1.0D+0,1.0D+0)/
      COMPLEX*8 E(10,10)/100*(1.0D+0,1.0D+0)/
      INTEGER*4 I,J,K
C
      DO 10 I=1,10
        DO 20 J=1,10
          A(I,J) = DSIN(DFLOAT(I))
          B(I,J) = DCOS(DFLOAT(J))
  20    CONTINUE
        DO 30 J=1,5
          C(I,J) = DTAN(DFLOAT(I))
  30    CONTINUE
        DO 40 J=5,10
          C(I,J) = DSIN(DFLOAT(I)) / DCOS(DFLOAT(I))
  40    CONTINUE
        DO 50 J=1,10
          D(I,J) = C(I,J)
          E(I,J) = A(I,J) / B(I,J)
  50    CONTINUE
  10  CONTINUE
C
      DO 1000 I=1,10,2
        DO 1000 J=1,10,2
          WRITE(6,1) A(I,J),B(I,J),C(I,J)
 1000 CONTINUE
C
      DO 60 I=1,10
        DO 60 J=1,10
          IF(A(I,J).GT.B(I,J)) THEN
            DO 70 K=1,10,2
              D(I,K) = A(I,K) / 5.0
              E(I,K) = B(I,K) * 3.0
  70        CONTINUE
          ELSE
            DO 80 K=1,10,3
              D(I,K) = A(I,K) * 5.0
              E(I,K) = B(I,K) / 3.0
  80        CONTINUE
          ENDIF
  60  CONTINUE
C
      DO 1100 I=1,10,2
        DO 1100 J=1,10,2
          WRITE(6,2) D(I,J),E(I,J)
 1100 CONTINUE
 1    format(3e15.7)
 2    format(4e15.7)
C
      STOP
      END
