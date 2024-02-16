PROGRAM MAIN
implicit none
type ty
      COMPLEX::A,B
end type ty
type(ty) :: obj
obj%A=(3.44,8.44)
obj%B=(4.44,5.44)

OPEN (UNIT=71, FILE='fort.75', FORM='FORMATTED')
WRITE(UNIT=71,*) obj%A%RE,obj%A%IM
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.75', FORM='FORMATTED')
READ(UNIT=77,*) obj%B%RE,obj%B%IM
CLOSE (UNIT=77,status='delete')
IF( obj%B%RE .ne. 3.44)print*,'101',obj%B%RE
IF( obj%B%IM .ne. 8.44)print*,'102',obj%B%IM

PRINT*,'PASS'

END PROGRAM

