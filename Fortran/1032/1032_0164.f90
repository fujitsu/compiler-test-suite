module li_module

  implicit none 

  type li
    integer :: size = 10
  end type li

  interface size
    module procedure li_size
  end interface size

contains

  function array(l) result(r)
    type(li), intent(in) :: l
    integer, dimension(size(l)) :: r
    integer :: i
    i = 1
    do i = 1, size(l)
      r(i) = i
    end do
  end function array

  pure function li_size(l) result (r)
    type(li), intent(in) :: l
    integer :: r

    r = l%size

  end function li_size

end module li_module

module b
  use li_module
type(li),save::x
contains
subroutine sub
if (size(array(x))/=10)print *,'error-1'
if (any(array(x)/=(/(i,i=1,10)/)))print *,'error-2'
end subroutine
end module b
use b
print *,'pass'
end
