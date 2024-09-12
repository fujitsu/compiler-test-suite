          COMPLEX  CC(10)
          REAL A(10,10),B(10),C(10)
          X=0.0
          DO 10 I=1,10
          DO 20 J=1,10
          X=X+1.0
   20     A(I,J)=X
   10     B(I) =I
          K=10
          DO 30 I=1,10
   30     WRITE (1,100) B(1),B(K)
  100     FORMAT ( 2F10.3 )
          ENDFILE 1
          L=10
          REWIND 1
          DO 40 I=1,10
   40     READ (1,100) C(1),C(L)
          DATA IERR / 0 /
          IF (C(1).EQ.B(1).AND.B(K).EQ.C(K)) GO TO 50
          IERR = IERR+1
          WRITE (6,9100)
 9100     FORMAT (1H , ' ERROR ITEM 1' )
   50     DO 60 I=1,5
   60     X=FUNC ( A(K,L),A(L,K))
          IF (X-200.LT.1.E-4) GO TO 70
          IERR=IERR+1
          WRITE (6,9200)
 9200     FORMAT (  '  ERROR ITEM 2 ')
   70     CONTINUE
          CC(1)=(1.0,1.0)
          CC(2)=(2.0,1.0)
          CC(3)=(3.0,1.0)
          K1=1
          K2=2
          K3=3
          CV1=CABS(CC(1))
          CV2=CABS(CC(2))
          CV3=CABS(CC(3))

          DO 200 I=1,10
          X1=CABS(CC(K1))
          X2=CABS(CC(K2))
          X3=CABS(CC(K3))
          IF (I.LT.3) X=CABS(CC(I))
  200     IF (I.LT.3) X=CABS(CC(I))
          IF ( CV1-X1+CV2-X2+CV3-X3.LT.1.0E-4 ) GO TO 110
          IERR=IERR+1
          WRITE (6,9300)
 9300     FORMAT (  '  ERROR ITEM 3' )
  110     IF (IERR.EQ.0) WRITE (6,9400)
 9400     FORMAT (  '  ERROR IS NOT DETECTED THIS PROGRAM')
          STOP
          END
          FUNCTION  FUNC (X,Y)
          FUNC=X+Y
          RETURN
          END
