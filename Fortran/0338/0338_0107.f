      PROGRAM MAIN
      REAL A(10),RES
      WRITE(6,*)'#### START ####'
      A(1)=0.0
      RES=0.0
      CALL SUB(A,RES)
      CALL SUB(A,RES)
      CALL SUB(A,RES)
      IF(RES.EQ.100.0) THEN
        WRITE(6,*)'*** OK ***'
      ELSE IF(RES.NE.100.0) THEN
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(A,RES)
      REAL A(10),RES
      IF(A(1).EQ.0.0) THEN
        IF(A(1).NE.0.0) THEN
          WRITE(6,*)'??? NG ???'
        ELSE IF(A(1).EQ.0.0) THEN
          A(1)=5000.0
        ENDIF
      ELSE IF(A(1).EQ.5000.0) THEN
        A(1)=5000.0*2.0
      ELSE IF(A(1).EQ.10000.0) THEN
        A(10)=A(1)
        IF(A(1).NE.A(10)) THEN
          WRITE(6,*)'??? NG ???'
        ELSE IF(A(10).NE.10000.0) THEN
          WRITE(6,*)'??? NG ???'
        ELSE IF(A(10).EQ.10000.0) THEN
          RES=SQRT(A(10))
        ENDIF
      ENDIF
      END
