PROGRAM MAIN

COMPLEX::OBJW(5),OBJR(5)
 INTEGER::G,F,Y,S,K,J,I,R
OBJW=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.79', FORM='UNFORMATTED')
WRITE(UNIT=71) ((((((((OBJW(I)%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
WRITE(UNIT=71) ((((((((OBJW(I)%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.79', FORM='UNFORMATTED')
READ(UNIT=77) ((((((((OBJR(I)%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
READ(UNIT=77) ((((((((OBJR(I)%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')


IF( OBJR(2)%RE .ne. 3.44)print*,'101'
IF( OBJR(2)%IM .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM

