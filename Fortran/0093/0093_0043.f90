MODULE M
  TYPE T
      COMPLEX::A
END TYPE T
 



END MODULE M

PROGRAM MAIN

USE M
TYPE(T)::OBJW 
REAL::R1,R2 
INTEGER::G,F,Y,S,K,J,I,R
OBJW%A=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.75', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW%A%RE,OBJW%A%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.75', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((R1,R2,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')


IF( R1 .ne. 3.44)print*,'101'
IF( R2 .ne. 8.44)print*,'102'






 PRINT*,'PASS'

END PROGRAM
