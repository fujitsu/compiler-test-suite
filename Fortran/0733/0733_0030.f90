module CalcThatM
implicit none
public :: calcThat
contains
   subroutine calcThat(array)
   real,dimension(:),intent(in) :: array
      write(unit=18,fmt=*) lbound(array,1),ubound(array,1)
   end subroutine calcThat
end module CalcThatM

program main
use CalcThatM
   real,dimension(0:43) :: startsAtZeroth
      call calcThat(startsAtZeroth)
rewind 18
read(18,*) i,j;if (any((/i,j/)/=(/1,44/)))print *,'error'
print *,'pass'
end program main
