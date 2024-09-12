      N=50
      N5=5
      N10=10
      N100=100
      CALL SUB7(N5)
      CALL SUB3A(N10)
      CALL SUB3B(N10)
      CALL SUB1(N,N100)
      END
      SUBROUTINE SUB7(N5)
      REAL    A(5,5,5,5,5,5,5),B(5,5,5,5,5,5,5),C(5,5,5,5,5,5,5)
      INTEGER CONDI/1/
        DO 10 I1=1,5
        DO 10 I2=1,5
        DO 10 I3=1,5
        DO 10 I4=1,5
        DO 10 I5=1,5
        DO 10 I6=1,5
        DO 10 I7=1,5
          A(I7,I6,I5,I4,I3,I2,I1)=-1.0
          B(I7,I6,I5,I4,I3,I2,I1)=1.0
          C(I7,I6,I5,I4,I3,I2,I1)=2.0
   10  CONTINUE
      IF(CONDI.GT.0)THEN
        DO 20 I1=1,N5
        DO 20 I2=1,N5
        DO 20 I3=1,N5
        DO 20 I4=1,N5
        DO 20 I5=1,N5
        DO 20 I6=1,N5
        DO 20 I7=1,N5
          A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)-
     *                            C(I7,I6,I5,I4,I3,I2,I1)
   20   CONTINUE
      ELSE
        DO 30 I1=1,N5
        DO 30 I2=1,N5
        DO 30 I3=1,N5
        DO 30 I4=1,N5
        DO 30 I5=1,N5
        DO 30 I6=1,N5
        DO 30 I7=1,N5
          A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)-
     *                            C(I7,I6,I5,I4,I3,I2,I1)
   30   CONTINUE
      ENDIF
      WRITE(6,*) (((((((A(I7,I6,I5,I4,I3,I2,I1),I7=2,5,3)
     *                                         ,I6=2,5,3)
     *                                         ,I5=2,5,3)
     *                                         ,I4=2,5,3)
     *                                         ,I3=2,5,3)
     *                                         ,I2=2,5,3)
     *                                         ,I1=2,5,3)
      END
      SUBROUTINE SUB3A(N10)
      REAL    A(10,10,10),B(10,10,10),C(10,10,10)
      INTEGER CONDI(10,10,10)
        DO 10 I1=1,10
        DO 10 I2=1,10
        DO 10 I3=1,10
          A(I3,I2,I1)=-1.0
          B(I3,I2,I1)=1.0
          C(I3,I2,I1)=2.0
          CONDI(I3,I2,I1)=(I1-I2)*(I2-I3)
   10  CONTINUE
      IF(CONDI(3,2,3).GT.0)THEN
      IF(CONDI(4,2,3).GT.0)THEN
        DO 20 I1=1,N10
        DO 20 I2=1,N10
        DO 20 I3=1,N10
          IF(CONDI(I3,I2,I1).GT.0)THEN
          A(I3,I2,I1)=B(I3,I2,I1)-C(I3,I2,I1)
          ELSE
          A(I3,I2,I1)=B(I3,I2,I1)*C(I3,I2,I1)
          ENDIF
   20   CONTINUE
      ELSE
        DO 21 I1=1,N10
        DO 21 I2=1,N10
        DO 21 I3=1,N10-1
          A(I3,I2,I1)=B(I3,I2,I1)-C(I3,I2,I1)
   21   CONTINUE
      ENDIF
      ELSE
      IF(CONDI(3,2,3).GT.0)THEN
        DO 30 I1=1,N10
        DO 30 I2=1,N10
        DO 30 I3=1,N10-1
          A(I3,I2,I1)=B(I3,I2,I1)+C(I3,I2,I1)
   30   CONTINUE
      ELSE
        DO 31 I1=1,N10
        DO 31 I2=1,N10
        DO 31 I3=1,N10
          IF(CONDI(I2,I1,I3).GT.0)THEN
          A(I3,I2,I1)=B(I3,I2,I1)+C(I3,I2,I1)
          ELSE
          A(I3,I2,I1)=B(I3,I2,I1)*C(I3,I2,I1)
          ENDIF
   31   CONTINUE
      ENDIF
      ENDIF
      WRITE(6,*) (((A(I3,I2,I1),I3=1,10,3)
     *                                         ,I2=1,10,3)
     *                                         ,I1=1,10,3)
      END
      SUBROUTINE SUB3B(N10)
      REAL    A(10,10,10),B(10,10,10),C(10,10,10)
      INTEGER CONDI(10,10,10)
        DO 10 I1=1,10
        DO 10 I2=1,10
        DO 10 I3=1,10
          A(I3,I2,I1)=-1.0
          B(I3,I2,I1)=1.0
          C(I3,I2,I1)=2.0
          CONDI(I3,I2,I1)=(I1-I2)*(I2-I3)
   10  CONTINUE
      IF(CONDI(3,2,1).GT.0)THEN
      IF(CONDI(4,2,1).GT.0)THEN
      IF(CONDI(5,2,1).GT.0)THEN
      IF(CONDI(6,2,1).GT.0)THEN
      IF(CONDI(7,2,1).GT.0)THEN
        DO 20 I1=1,N10
        DO 20 I2=1,N10
        DO 20 I3=1,N10
          A(I3,I2,I1)=B(I3,I2,I1)-C(I3,I2,I1)
   20   CONTINUE
      ELSE
       CONTINUE
      ENDIF
      ELSE
       CONTINUE
      ENDIF
      ELSE
       CONTINUE
      ENDIF
      ELSE
       CONTINUE
      ENDIF
      ELSE
       CONTINUE
      ENDIF
      IF(CONDI(3,2,3).GT.0)THEN
        CONTINUE
      ELSE
      IF(CONDI(4,2,3).GT.0)THEN
        CONTINUE
      ELSE
      IF(CONDI(5,2,3).GT.0)THEN
        CONTINUE
      ELSE
      IF(CONDI(6,2,3).GT.0)THEN
        CONTINUE
      ELSE
      IF(CONDI(7,2,3).GT.0)THEN
        CONTINUE
      ELSE
        DO 30 I1=1,N10
        DO 30 I2=1,N10
        DO 30 I3=1,N10
          A(I3,I2,I1)=B(I3,I2,I1)-C(I3,I2,I1)
   30   CONTINUE
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      ENDIF
      WRITE(6,*) (((A(I3,I2,I1),I3=1,10,3)
     *                                         ,I2=1,10,3)
     *                                         ,I1=1,10,3)
      END
      SUBROUTINE SUB1(N,N100)
      REAL    A(100),B(100),C(100)
      INTEGER CONDI(100),N
        DO 10 I1=1,100
          A(I1)=-1.0
          B(I1)=1.0
          C(I1)=2.0
          CONDI(I1)=I1-50
   10  CONTINUE
      IF(CONDI(N).GT.0)THEN
      IF(CONDI(N).GT.0)THEN
        DO 20 I1=1,N100
          IF(CONDI(I1).GT.0)THEN
          A(I1)=B(I1)-C(I1)
          ELSE
          A(I1)=B(I1)*C(I1)
          ENDIF
   20   CONTINUE
      ELSE
        DO 21 I1=1,10
   21   CONTINUE
      ENDIF
      ELSE
      IF(CONDI(N).GT.0)THEN
        DO 30 I1=1,N100
          A(I1)=B(I1)+C(I1)
   30   CONTINUE
      ELSE
        DO 31 I1=1,N100
          IF(CONDI(I1).GT.0)THEN
          A(I1)=B(I1)+C(I1)
          ELSE
          A(I1)=B(I1)*C(I1)
          ENDIF
   31   CONTINUE
      ENDIF
      ENDIF
      WRITE(6,*)(A(I),I=1,100,2)
      END
