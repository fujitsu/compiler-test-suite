      CHARACTER*3 CHA1(7,7)
      COMPLEX*16  CMP1(7,7)
      CHA1='???'
      CHA1(1:7:3,1:7:3)='123'
      CMP1=0
      CMP1(1:7:3,1:7:3)=(8.D0,8.D0)
      PRINT *,'PASS'
      CONTAINS
       CHARACTER*4 FUNCTION CHAF2(CH)
       CHARACTER*(*)              CH
       CHAF2=CH
       END FUNCTION
       CHARACTER*5 FUNCTION CHAF1(CH)
       CHARACTER*(*)              CH
       CHAF1=CH
       END FUNCTION
       SUBROUTINE SUB0( CHA )
       CHARACTER (LEN=*),DIMENSION(11:,101:):: CHA
       IF (LEN(CHA).NE.5) PRINT *,'FAIL'
       DO 1 I=11,13
        DO 2 J=101,103
          IF (CHA(I,J).NE.'123')PRINT *,'FAIL'
  2    CONTINUE
  1    CONTINUE
       END SUBROUTINE
       COMPLEX*32  FUNCTION CMPF2(CM)
       COMPLEX*16                 CM
       IF (CM.NE.(8.,8.)) PRINT *,'FAIL'
       CMPF2=CM+(1.D0,1.D0)
       END FUNCTION
       COMPLEX*8   FUNCTION CMPF1(CM)
       COMPLEX*32                 CM
       IF (CM.NE.(9.Q0,9.Q0)) PRINT *,'FAIL'
       CMPF1=CM+(1.0,1.0)
       END FUNCTION
       SUBROUTINE SUB1( CM )
       COMPLEX          ,DIMENSION(11:,101:):: CM
       DO 1 I=11,13
        DO 2 J=101,103
          IF (CM(I,J).NE.(10,10))PRINT *,'FAIL'
   2    CONTINUE
   1    CONTINUE
       END SUBROUTINE
      END
