module m
implicit none
interface switch
subroutine int_switch (x)
 integer :: x
end subroutine int_switch

subroutine int_switch_1 (x)
 procedure(INTEGER) :: x
end subroutine int_switch_1
end interface switch

contains
integer function my_func(a)
  integer::a
  my_func=a
end function
end module

subroutine int_switch(a)
  integer:: a
  if(a /= 2)print *,101
end subroutine

subroutine int_switch_1(fun)
  procedure(integer) :: fun
  if(fun(5) /= 5)print *,102
end subroutine

use m
implicit none
call switch(2)
call int_switch_1(my_func)
print *,"pass"
end program
