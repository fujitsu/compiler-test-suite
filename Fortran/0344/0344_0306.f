      PROGRAM MAIN
      REAL*8  D/0.0/
      REAL*8 Q/0.0/
      COMPLEX C(100)
      COMPLEX*16 CQ(100)
      DOUBLEPRECISION DBL/0.0/
C
      DO 20 I=1,100
        C(I)=I
        DBL=C(I)/I
        CALL SUB1(DBL)
        DO 10 M=1,10
          DBL=C(I)*M
   10   CONTINUE
        D=Q+DBL+C(I)
        DO 20 L=3,60
          CQ(I)=D+(DBL/C(I))*L
          Q=CQ(I)/I
   20 CONTINUE
C
      
      WRITE(6,1) Q
      WRITE(6,1) (CQ(I),I=1,100,5)
 1    format (4e14.6)
      STOP
      END
C
      SUBROUTINE SUB1(A)
      INTEGER*2 H/5/
      COMPLEX*16 CD/0/
      DOUBLEPRECISION A
      DO 150 J=1,1000
        A=(A+J)/H**J
        IF (A.GE.0) THEN
          DO 100 K=200,600,40
           CD=CD+K
  100     CONTINUE
        ENDIF
      A=A+CD
  150 CONTINUE
      RETURN
      END
