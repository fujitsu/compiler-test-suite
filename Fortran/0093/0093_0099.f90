PROGRAM MAIN
      COMPLEX::A(3),B(3)
A=[(3.44,8.44),(6.11,7.22),(8,9)]
B=(2,5)

OPEN (UNIT=71, FILE='fort.75', FORM='FORMATTED')
WRITE(UNIT=71,*) A(2)%RE,A(2)%IM
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.75', FORM='FORMATTED')
READ(UNIT=77,*) B(2)%RE,B(2)%IM
CLOSE (UNIT=77,status='delete')
IF( B(2)%RE .ne. 6.11)print*,'101',B(2)%RE
IF( B(2)%IM .ne. 7.22)print*,'102',B(2)%IM
PRINT*,'PASS'
END PROGRAM