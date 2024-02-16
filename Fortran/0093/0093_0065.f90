
PROGRAM MAIN

COMPLEX::OBJW(2)
        REAL::R1(4)
OBJW(1)=(3.44,8.44)
OBJW(2)=(5.44,6.44)

 OPEN (UNIT=71, FILE='fort.81', FORM='FORMATTED')
     WRITE(UNIT=71,FMT='(F5.2)')OBJW%RE
     WRITE(UNIT=71,FMT='(F5.2)')OBJW%IM

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='FORMATTED')
     READ(UNIT=77,FMT='(F5.2)')R1(1),R1(2)
     READ(UNIT=77,FMT='(F5.2)')R1(3),R1(4)
     CLOSE (UNIT=77,status='delete')


IF( R1(1) .ne. 3.44)print*,'101'
IF( R1(2) .ne. 5.44)print*,'102'
IF( R1(3) .ne. 8.44)print*,'103'
IF( R1(4) .ne. 6.44)print*,'104'


 PRINT*,'PASS'

END PROGRAM

