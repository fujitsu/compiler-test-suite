      PROGRAM MAIN
      INTEGER INT,TEI,ABC
      PARAMETER (INT=100)
      PARAMETER (TEI=INT)
      PARAMETER (ABC=10000)
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      TOTAL=0
      FLAG=INT.EQ.100.AND.TEI.EQ.100.AND.ABC.EQ.10000

      IF(FLAG) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END


