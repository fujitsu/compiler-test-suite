module m
  type str
    type(str),pointer:: next
    integer i
  end type str
  public:: foo
contains

  subroutine foo(current)
    type(str),pointer:: current, p
    p => current%next
    deallocate(current)
    current => p
  end subroutine foo
end module m

program main
use m
type(str),pointer :: v
allocate(v)
allocate(v%next)
call foo(v)
if(associated(v)) then
  print *,"ok"
else
  print *,"ng"
endif
end program
