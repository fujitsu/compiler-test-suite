      PROGRAM MAIN
      INTEGER A,B(8),C(2),D(10),COUNT,ELM,DUMMY
      WRITE(6,*)'#### START ####'
      DO 10 I=1,10
   10   A=100
      DO 20 I=1,8
        B(I)=A
        IF(I.EQ.1) C(I)=A
   20   IF(I.EQ.2) C(I)=A
      DO 30 I=1,10,2
        IF(I.LE.8) THEN
          D(I)=B(I)
        ELSE
          D(I)=C(I-8)
        ENDIF
   30   DUMMY=0
      DO 40 I=10,1,-2
        IF(I.LE.8) THEN
          D(I)=B(I)
        ELSE
          D(I)=C(I-8)
        ENDIF
   40   DUMMY=0
      COUNT=0
      DO 50 I=0,0
        DO 60 J=1,10
          ELM=D(I+J)
   60     IF(ELM.EQ.100) COUNT=COUNT+1
   50   DUMMY=0

      IF(COUNT.EQ.10) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
