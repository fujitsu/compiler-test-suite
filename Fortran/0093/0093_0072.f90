MODULE M
  TYPE T
      COMPLEX::A
END TYPE T
 



END MODULE M

PROGRAM MAIN

USE M
TYPE(T)::OBJW(2)
OBJW(1)%A=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.81', FORM='UNFORMATTED')
     WRITE(UNIT=71)OBJW(1)%A%RE
     WRITE(UNIT=71)OBJW(1)%A%IM

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='UNFORMATTED')
     READ(UNIT=77)OBJW(2)%A%RE
     READ(UNIT=77)OBJW(2)%A%IM
     CLOSE (UNIT=77,status='delete')


IF( OBJW(2)%A%RE .ne. 3.44)print*,'101'
IF( OBJW(2)%A%IM .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM

