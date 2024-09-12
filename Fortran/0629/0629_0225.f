      IMPLICIT REAL*8 (A-H,O-Z)
      PARAMETER (KK=20)
      PARAMETER (KA=KK,KB=KK,KC=KK)
      DIMENSION A(KA,KA),B(KB,KB),C(KC,KC)
      I0 = 0
      I1 = 0
      CALL TIMER0
      L=KA-1
      M=L
      N=L
      DO 10 J=1,N
      DO 10 I=1,L
      A(I,J)=1.D0
   10 B(I,J)=0.5D0
      CALL TIMER(I0)
      CALL MULMMW(A,B,C,KA,KB,KC,L,M,N,ILL)
      CALL TIMER(I1)
      WRITE(6,600) L,I1-I0,ILL,1.D0*0.5D0*REAL(L)
  600 FORMAT(' SIZE=',I4,' TIME=',I8,'MSEC     ILL=',I6,
     *  ' ELEMENT=',D15.7)
      WRITE(6,610) (J,J=1,6)
  610 FORMAT('0',8X,6(4X,I6,5X)/)
      WRITE(6,620) (I,(C(I,J),J=1,6),I=1,6)
  620 FORMAT(' ',I6,2X,6D15.7)
      WRITE(6,610) (J,J=N/2+1,N/2+6)
      WRITE(6,620) (I,(C(I,J),J=N/2+1,N/2+6),I=L/2+1,L/2+6)
      WRITE(6,610) (J,J=N-5,N)
      WRITE(6,620) (I,(C(I,J),J=N-5,N),I=L-5,L)
      STOP
      END
      SUBROUTINE MULMMW(A,B,C,KA,KB,KC,L,M,N,ILL)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION A(KA,M),B(KB,N),C(KC,N)
      IF(L.LT.1.OR.L.GT.KA.OR.L.GT.KC) GO TO 70
      IF(M.LT.1.OR.M.GT.KB) GO TO 70
      IF(N.LT.1) GO TO 70
      MM=M/2*2
      DO 60 J=1,N
      DO 10 I=1,L
   10 C(I,J)=0.D0
      DO 30 K=1,MM,2
      DO 20 I=1,L
   20 C(I,J)=C(I,J)+A(I,K)*B(K,J)+A(I,K+1)*B(K+1,J)
   30 CONTINUE
      DO 50 K=MM+1,M
      DO 40 I=1,L
   40 C(I,J)=C(I,J)+A(I,K)*B(K,J)
   50 CONTINUE
   60 CONTINUE
      ILL=0
      RETURN
   70 ILL=30000
      RETURN
      END
      SUBROUTINE TIMER(ITIME)
      REAL*8 TIME
      RETURN
      ENTRY TIMER0
      RETURN
      END
