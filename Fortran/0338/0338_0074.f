      PROGRAM MAIN
      INTEGER A(10),B(10,10),COUNT
      INTEGER*2 I
      INTEGER*4 J,CONV
      REAL*4 X
      REAL*8 Y
      WRITE(6,*)'#### START ####'
      COUNT=0
      DO 10 X=1.0,10.0,2.0
        CONV=X
   10   A(CONV)=CONV
      DO 20 Y=10.0,1.0,-2.0
        CONV=Y
   20   A(CONV)=CONV
      DO 30 I=1,10
        DO 30 J=1,10
   30     B(I,J)=A(J)
      DO 40 I=1,10
        DO 40 J=1,10
          IF(B(I,J).EQ.J) COUNT=COUNT+1
   40 DUMMY=10.0

      CALL SUB
      DO 99 I=1,10
        IF(COUNT.EQ.100) THEN
          WRITE(6,*)'*** OK ***'
        ELSE
          WRITE(6,*)'??? NG ???',COUNT
        ENDIF
        WRITE(6,*)'####  END  ####'
        STOP
   99   WRITE(6,*)'??? NG ???'
      END

      SUBROUTINE SUB
      DO 100 I=1,2
        IF(I.EQ.1) RETURN
  100   WRITE(6,*)'??? NG ???'
      END
