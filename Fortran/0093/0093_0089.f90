
PROGRAM MAIN

COMPLEX::OBJW,OBJR
 INTEGER::I
OBJW=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.81', FORM='FORMATTED')
     WRITE(UNIT=71,FMT='(F5.2)')(OBJW%RE,I=1,3)
     WRITE(UNIT=71,FMT='(F5.2)')(OBJW%IM,I=1,3)

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='FORMATTED')
     READ(UNIT=77,FMT='(F5.2)')(OBJR%RE,I=1,3)
     READ(UNIT=77,FMT='(F5.2)')(OBJR%IM,I=1,3)
     CLOSE (UNIT=77,status='delete')


IF( OBJR%RE .ne. 3.44)print*,'101'
IF( OBJR%IM .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM

