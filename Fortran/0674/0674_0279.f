      PARAMETER (N=4,M=10)
      REAL*8 A(N,M)
      LOGICAL L(N,M),LL
      DATA L/20*.TRUE.,20*.FALSE./,LL/.TRUE./
      IF(LL) THEN
        DO 1 I=1,3
          DO 1 J=1,M
            A(I,J)=10.0
    1 CONTINUE
      ENDIF
      CALL SUB1(A,N,M)
      DO 10 I=1,3
        DO 10 J=1,M
          IF(L(I,J))THEN
            A(I,J)=0.0
          ELSE
            A(I,J)=9.9
          ENDIF
   10 CONTINUE
      CALL SUB2(A,N,M)
      IF(A(1,1).LE.0.00001) GO TO 99
      DO 20 I=1,N
        DO 20 J=1,9
          A(I,J)=9999.99
   20 CONTINUE
   99 CONTINUE
      CALL SUB3(A,N,M)
      IF(A(1,1).LE.0.00001) GO TO 999
      DO 25 I=1,3
      TTT=0.01
        DO 25 J=1,M
          A(I,J)=9999.99
   25 CONTINUE
  999 CONTINUE
      CALL SUB4
      CALL SUB5
      CALL SUB6
      STOP
      END
      SUBROUTINE SUB1(A,N,M)
      REAL*8 A(N,M)
      REAL*8 B(4,10),C(4,10),D(10)
      NN=N-1
      PRINT *,'OK OK OK'
      DO 100 I=1,NN
        DO 100 J=1,M
          A(I,J)=1.0
  100 CONTINUE
      DO 200 I=1,NN
        DO 200 J=1,M
          B(I,J)=9.9
  200 CONTINUE
      DO 250 II=1,10
        D(II)=100.0
  250 CONTINUE
      DO 300 I=1,NN
        DO 300 J=1,M
          C(I,J)=3.0
  300 CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(A,N,M)
      REAL*8 A(N,M)
      REAL*8 B(4,10),C(4,10),D(10)
      INTEGER MI(5)
      DATA MI/3,5,7,8,10/
      NN=N-1
      DO 1000 III=1,5
      MM=MI(III)
      DO 100 I=1,NN
        DO 100 J=1,MM
          A(I,J)=1.0
  100 CONTINUE
      IF(MI(1).LE.9)GO TO 260
      DO 200 I=1,NN
        DO 200 J=1,MM
          B(I,J)=9.9
  200 CONTINUE
      DO 250 II=1,10
        D(II)=100.0
  250 CONTINUE
  260 CONTINUE
      DO 300 I=1,NN
        DO 300 J=1,MM
          C(I,J)=3.0
  300 CONTINUE
 1000 CONTINUE
      RETURN
      END
      SUBROUTINE SUB3(A,N,M)
      REAL*8 A(N,M),AA(5)
      REAL*8 B(4,10)
      NN=N-1
      DO 1000 III=1,5
      AA(III)=1.0
      DO 100 I=1,NN
        DO 100 J=1,M
          A(I,J)=1.0
  100 CONTINUE
      DO 200 I=1,NN
        DO 200 J=1,M
          B(I,J)=3.0
  200 CONTINUE
 1000 CONTINUE
      RETURN
      END

      SUBROUTINE SUB4
      REAL*8 A(10),B(10,10)
      N=9
      M=10

      DO 10 J=1,M
       A(J)=0.0

       DO 10 I=1,N
        B(I,J)=0.0
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB5
      REAL*8 A(10,10,10),B(10,10,10)
      DATA B/1000*1.0/
      N=9
      M=9
      L=10
      DO 10 I=1,N
       DO 10 J=1,M
        DO 10 K=1,L
         A(I,J,K)=B(I,J,K)
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB6
      REAL*8 A(10,10,10),B(10,10,10)
      DATA B/1000*1.0/
      N=9
      M=9
      L=10

      DO 10 I=1,N

       DO 10 J=1,M
        DO 10 K=1,L
         A(I,J,K)=B(I,J,K)
   10 CONTINUE
      RETURN
      END
