      CHARACTER,PARAMETER::ICHAR1='A'
      CHARACTER(LEN=9),PARAMETER::INDEX1='FORTRAN8X'
      CHARACTER(LEN=65),PARAMETER::INDEX2='ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     1ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZA'
      CHARACTER(LEN=9),PARAMETER::LEN1='FORTRAN8X'
      INTEGER*4,PARAMETER::CHAR1=65
      INTEGER*4,PARAMETER::ANSINDEX1=8
      LOGICAL*4,PARAMETER::T=.TRUE.
   10 IF (ICHAR(ICHAR1).EQ.65) THEN
      ELSE
      print *,'10'
      PRINT *,'FAIL'
      ENDIF
   20 IF (CHAR(CHAR1).EQ.'A') THEN
      ELSE
      print *,'20'
      PRINT *,'FAIL'
      ENDIF
   30 IF (INDEX(INDEX1,'8').EQ.ANSINDEX1) THEN
      ELSE
      WRITE(6,*) 'NG'
      WRITE(6,*) INDEX(INDEX1,'8')
      PRINT *,'FAIL'
      ENDIF
   50 IF (LEN(LEN1).EQ.9) THEN
      ELSE
      print *,'50' 
      PRINT *,'FAIL'
      ENDIF
   60 IF (LGE('AAA','AAA').AND.T) THEN
      ELSE
      print *,'60'
      PRINT *,'FAIL'
      ENDIF
   70 IF (LGT('ABC','AAA').AND.T) THEN
      ELSE
      print *,'70' 
      PRINT *,'FAIL'
      ENDIF
   80 IF (LLE('AAA','AAA').AND.T) THEN
      ELSE
      print *,'80'
      PRINT *,'FAIL'
      ENDIF
   90 IF (LLT('AAA','CBA').AND.T) THEN
      ELSE
      print *,'90'
      PRINT *,'FAIL'
      ENDIF
  100 IF (ICHAR(CHAR(INDEX(INDEX2,'A'))).EQ.LEN(INDEX2)) THEN
      ELSE
      print *,INDEX(INDEX2,'A')
      print *,CHAR(INDEX(INDEX2,'A'))
      print *,ICHAR(CHAR(INDEX(INDEX2,'A')))
      print *,LEN(INDEX2)
      print *,'100'
      PRINT *,'FAIL'
      ENDIF
  110 IF (CHAR(ICHAR('T'))//CHAR(ICHAR('E'))//CHAR(ICHAR('S'))//CHAR(ICH
     1AR('T')).EQ.'TEST') THEN
      ELSE
      print *,'110'
      PRINT *,'FAIL'
      ENDIF
      WRITE(6,*) '*****PASS*****'
      STOP
      END
