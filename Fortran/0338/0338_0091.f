      PROGRAM MAIN
      INTEGER A,B,C,D,E,F,G(3),H(3),I(3),TOTAL
      CHARACTER*3 CH1,CH2
      LOGICAL FLAG
      COMMON /COM/F
      EQUIVALENCE (A,B)
      EQUIVALENCE (C,D),(D,E)
      EQUIVALENCE (F,G(1)),(H(2),I(1))
      EQUIVALENCE (CH1(3:3),CH2(1:1))
      WRITE(6,*)'#### START ####'
      A=10
      C=10
      G(1)=10
      H(3)=10
      CH1='ABC'
      CH2(2:3)='DE'

      TOTAL=B+E+F+I(2)
      FLAG=TOTAL.EQ.40.AND.CH2.EQ.'CDE'
      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
