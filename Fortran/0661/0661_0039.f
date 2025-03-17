      CHARACTER,PARAMETER::ICHAR1='A'
      CHARACTER(LEN=9),PARAMETER::INDEX1='FORTRAN8X'
      CHARACTER(LEN=65),PARAMETER::INDEX2='zzzzzzzzzzzzzzzzzzzzzzzzzzzzz
     1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzza'
      CHARACTER(LEN=9),PARAMETER::LEN1='FORTRAN8X'
      INTEGER*4,PARAMETER::CHAR1=65
      INTEGER*4,PARAMETER::ANSINDEX1=8
      LOGICAL*4,PARAMETER::T=.TRUE.
   10 IF (ICHAR(ICHAR1).EQ.65) THEN
      ELSE
      print *,ichar(ICHAR1)
      print *,'fail'
      ENDIF
   20 IF (CHAR(CHAR1).EQ.'A') THEN
      ELSE
      print *,'fail'
      ENDIF
   30 IF (INDEX(INDEX1,'8').EQ.ANSINDEX1) THEN
      ELSE
      write(*,*) 'NG'
      write(*,*) INDEX(INDEX1,'8')
      print *,'fail'
      ENDIF
   50 IF (LEN(LEN1).EQ.9) THEN
      ELSE
      print *,'fail'
      ENDIF
   60 IF (LGE('AAA','AAA').AND.T) THEN
      ELSE
      print *,'fail'
      ENDIF
   70 IF (LGT('ABC','AAA').AND.T) THEN
      ELSE
      print *,'fail'
      ENDIF
   80 IF (LLE('AAA','AAA').AND.T) THEN
      ELSE
      print *,'fail'
      ENDIF
   90 IF (LLT('AAA','CBA').AND.T) THEN
      ELSE
      print *,'fail'
      ENDIF
  100 IF (ICHAR(CHAR(INDEX(INDEX2,'a'))).EQ.LEN(INDEX2)) THEN
      ELSE
      print *,INDEX(INDEX2,'a')
      print *,ICHAR(CHAR(INDEX(INDEX2,'a')))
      print *,LEN(INDEX2)
      print *,'fail'
      ENDIF
  110 IF (CHAR(ICHAR('T'))//CHAR(ICHAR('E'))//CHAR(ICHAR('S'))//CHAR(ICH
     1AR('T')).EQ.'TEST') THEN
      ELSE
      print *,'fail'
      ENDIF
      write(*,*) '*****PASS*****'
      STOP
      END
