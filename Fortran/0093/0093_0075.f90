MODULE M
  TYPE T
      COMPLEX::A
END TYPE T
END MODULE M

PROGRAM MAIN

USE M
TYPE(T)::OBJW(10),OBJR(10)
        INTEGER::G,F,Y,S,K,J,I,R
OBJW%A=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.78', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW(1:8:2)%A%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
WRITE(UNIT=71,*) ((((((((OBJW(1:8:2)%A%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.78', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((OBJR(1:8:2)%A%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
READ(UNIT=77,*) ((((((((OBJR(1:8:2)%A%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')


IF( OBJR(7)%A%RE .ne. 3.44)print*,'101'
IF( OBJR(7)%A%IM .ne. 8.44)print*,'102'
 PRINT*,'PASS'

END PROGRAM

