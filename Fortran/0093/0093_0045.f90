MODULE M
  TYPE T
      COMPLEX::A
END TYPE T
 



END MODULE M

PROGRAM MAIN

USE M
TYPE(T)::OBJW(10)
REAL::R1(10),R2(10)
        INTEGER::G,F,Y,S,K,J,I,R
OBJW%A=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.78', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW(1:8:2)%A%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
WRITE(UNIT=71,*) ((((((((OBJW(1:8:2)%A%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.78', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((R1(1:8:2),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
READ(UNIT=77,*) ((((((((R2(1:8:2),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')


IF( R1(7) .ne. 3.44)print*,'101'
IF( R2(7) .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM

