module fuzit
implicit none

public :: bustit


type , public:: wierd
 integer :: one,two
end type wierd

type(wierd),public :: globally_wierd

contains
 function bustit(z) result(ans)
  type(wierd), intent(inout)  :: z
   integer                  :: ans
   ans = z%one
   z%one = z%one + 1
 end function bustit

end module fuzit

program main
use fuzit

  integer  :: i
  globally_wierd = wierd(0,0)

  do i = 1,10
    write(7,*)bustit(globally_wierd)
  end do
rewind 7
do i=1,10
read(7,*)jj;if (any((/jj/)/=i-1))write(6,*) "NG"
end do
print *,'pass'
end program main
