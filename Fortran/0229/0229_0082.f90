module m1
  type :: t1
     integer :: x
  end type t1
end module m1

module m2
  interface
     function f()
       use m1
       type(t1) :: f
     end function
  end interface
end module m2

module m3
use m2
contains
  subroutine foo (proc)
    use :: m2
    procedure (f) :: proc
  end subroutine foo
end module m3

use m3
print *,'pass'
end program

