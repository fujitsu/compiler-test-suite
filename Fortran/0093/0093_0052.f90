MODULE M
  TYPE T
      COMPLEX::A
END TYPE T
 



END MODULE M

PROGRAM MAIN

USE M
TYPE(T)::OBJW(2)
REAL::R1(4)

OBJW(1)%A=(3.44,8.44)
OBJW(2)%A=(5.44,6.44)

 OPEN (UNIT=71, FILE='fort.81', FORM='UNFORMATTED')
     WRITE(UNIT=71)OBJW%A%RE
     WRITE(UNIT=71)OBJW%A%IM

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='UNFORMATTED')
     READ(UNIT=77)R1(1),R1(2)
     READ(UNIT=77)R1(3),R1(4)
     CLOSE (UNIT=77,status='delete')


IF( R1(1) .ne. 3.44)print*,'101'
IF( R1(2).ne. 5.44)print*,'102'
IF( R1(3) .ne. 8.44)print*,'103'
IF( R1(4) .ne. 6.44)print*,'104'



 PRINT*,'PASS'

END PROGRAM

