module CalcThatM
implicit none
public :: calcThat
contains
   subroutine calcThat(array)
   real,dimension(:),intent(in) :: array
      write(unit=1,fmt=*) lbound(array,1),ubound(array,1)
   end subroutine calcThat
end module CalcThatM

program main
use CalcThatM
   real,dimension(0:43) :: startsAtZeroth
      call calcThat(startsAtZeroth)
rewind 1
read(1,*) i,j;if (any((/i,j/)/=(/1,44/)))print *,'error'
print *,'pass'
end program main
