
PROGRAM MAIN
COMPLEX::OBJR1
INTEGER::C=5,D=7

 OPEN (UNIT=71, FILE='fort.81', FORM='FORMATTED')
     WRITE(UNIT=71,FMT='(I2,2F5.2,I2)')C,(3.44,8.44),D 

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='FORMATTED')
     READ(UNIT=77,FMT='(I2,2F5.2,I2)')C,OBJR1%RE,OBJR1%IM,D
     CLOSE (UNIT=77,status='delete')


IF( OBJR1%RE .ne. 3.44)print*,'101'
IF( OBJR1%IM .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM
