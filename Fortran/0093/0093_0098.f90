PROGRAM MAIN
      COMPLEX::A(3),B(3)
A=[(3.44,8.44),(6,7),(8,9)]
B=(4.44,5.44)

OPEN (UNIT=71, FILE='fort.75', FORM='FORMATTED')
WRITE(UNIT=71,*) A%RE,A%IM
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.75', FORM='FORMATTED')
READ(UNIT=77,*) B%RE,B%IM
CLOSE (UNIT=77,status='delete')
IF( B(1)%RE .ne. 3.44)print*,'101'
IF( B(1)%IM .ne. 8.44)print*,'102'
IF( B(2)%RE .ne. 6.00)print*,'103'
IF( B(2)%IM .ne. 7.00)print*,'104'
IF( B(3)%RE .ne. 8.00)print*,'105'
IF( B(3)%IM .ne. 9.00)print*,'106'

PRINT*,'PASS'

END PROGRAM

