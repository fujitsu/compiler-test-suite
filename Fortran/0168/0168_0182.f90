module misc
implicit none
contains
function pass_pointer(value) result(ptr)

  class(*), pointer, intent(in) :: value
  class(*), pointer :: ptr
  ptr => value
  return

end function pass_pointer
end module misc

program main

  use misc

  implicit none
  integer, target :: a
  class(*), pointer :: a_ptr,x_ptr
  integer, pointer :: b_ptr

  a = 6
  a_ptr => a
  x_ptr => pass_pointer(a_ptr)
  select type(ptr => x_ptr)
  type is (integer)
    b_ptr => ptr
  end select
  if (a/=6) print *,101
 if (b_ptr/=6) print *,201
print *,'pass'

  stop

end program main
