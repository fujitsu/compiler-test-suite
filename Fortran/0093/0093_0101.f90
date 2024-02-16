PROGRAM MAIN
implicit none
type ty
      COMPLEX::A(3),B(3)
end type ty
type(ty) :: obj
obj%A=[(3.44,8.44),(5,7),(8,1)]
obj%B=(4.44,5.44)

OPEN (UNIT=71, FILE='fort.75', FORM='FORMATTED')
WRITE(UNIT=71,*) obj%A%RE,obj%A%IM
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.75', FORM='FORMATTED')
READ(UNIT=77,*) obj%B%RE,obj%B%IM
CLOSE (UNIT=77,status='delete')
IF( obj%B(1)%RE .ne. 3.44)print*,'101'
IF( obj%B(1)%IM .ne. 8.44)print*,'102'
IF( obj%B(2)%RE .ne. 5.00)print*,'103'
IF( obj%B(2)%IM .ne. 7.00)print*,'104'
IF( obj%B(3)%RE .ne. 8.00)print*,'105'
IF( obj%B(3)%IM .ne. 1.00)print*,'106'

PRINT*,'PASS'

END PROGRAM

