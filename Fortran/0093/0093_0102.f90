PROGRAM MAIN
implicit none
type ty
      COMPLEX::A(3),B(3)
end type ty
type(ty) :: obj
obj%A=[(3.44,8.44),(5.11,7.22),(8,1)]
obj%B=(4.44,5.44)

OPEN (UNIT=71, FILE='fort.75', FORM='FORMATTED')
WRITE(UNIT=71,*) obj%A(2)%RE,obj%A(2)%IM
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.75', FORM='FORMATTED')
READ(UNIT=77,*) obj%B(2)%RE,obj%B(3)%IM
CLOSE (UNIT=77,status='delete')
IF( obj%B(2)%RE .ne. 5.11)print*,'101'
IF( obj%B(3)%IM .ne. 7.22)print*,'102'

PRINT*,'PASS'

END PROGRAM

