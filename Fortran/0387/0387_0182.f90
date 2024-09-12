module m
  procedure (proc), pointer :: p => null()
contains
  subroutine proc(x)
    integer :: x
    x = x + 1
  end subroutine
end module
  use m
  integer x
  p => proc
  x = 0
  call p(x)
print *,'pass'
end
