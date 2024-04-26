      COMPLEX  X,Y,Z
      DIMENSION B(2)
      EQUIVALENCE  (Z,B(1))
      ITEM=1
      N=1
      ISW=1
      DIFF=1.0E-5
      L=0
    9 GO TO (1,2,3,4,5,6,7,8),ISW
    1 X=(3.0,4.0)
      ISW=2
      GO TO 10
    2 X=(-3.0,4.0)
      ISW=3
      GO TO 10
    3 X=(-3.0,-4.0)
      ISW=4
      GO TO 10
    4 X=(3.0,-4.0)
      ISW=5
      GO TO 10
    5 X=(0.0,-5.0)
      ISW=6
      GO TO 10
    6 X=(10.0,0.0)
      ISW=7
      GO TO 10
    7 X=(0.0,0.0)
      ISW=8
   10 Y=CONJG(X)
      B(1)=REAL(X)
      B(2)=-AIMAG(X)
      CALL CPRTN(L,DIFF,X,Y,Z)
      GO TO 9
    8 CONTINUE
      STOP
      END
C
      SUBROUTINE    CPRTN (L,D,A,R,V)
      COMPLEX A,R,V,DIFF
      DIFF = V - R
      IF(CABS(R)) 90,80,90
   80 IF(CABS(DIFF)-D) 100,120,120
   90 IF(CABS(DIFF)-D*CABS(V)) 100,120,120
  100 WRITE (6,1)
    1 FORMAT (1H ,2X,7H*OK*   ,4X,E14.7,1X,E14.7,4X,E14.7,1X,E14.7,
     *        4X,E14.7,1X,E14.7,3X,2E10.3)
      GO TO 130
  120 WRITE (6,2) A,R,V,DIFF
    2 FORMAT (1H ,2X,7H*ERROR*,4X,E14.7,1X,E14.7,4X,E14.7,1X,E14.7,
     *        4X,E14.7,1X,E14.7,3X,2E10.3)
  130 IF (L- 9) 200,190,140
  140 IF (L-19) 200,190,150
  150 IF (L-29) 200,190,160
  160 IF (L-39) 200,190,200
  190 WRITE (6,3)
    3 FORMAT (1H )
  200 RETURN
      END
