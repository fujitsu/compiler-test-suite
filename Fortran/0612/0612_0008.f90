module quick_select_module
public :: quick_select
contains
subroutine quick_select (list, element)
   real, dimension (:), intent (in) :: list
   real, intent (out) :: element
   element = list(1)
end subroutine quick_select
end module quick_select_module

program p_quick_sel
use quick_select_module
real :: element
real, dimension(1) :: x
x = (/ 5987414 /)
call quick_select(x,element)
print *, element
end program p_quick_sel
