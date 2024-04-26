module m1
  type :: t1
     integer :: x
  end type t1
end module m1


module m3
contains
  subroutine foo (proc)
  interface
     function f()
       use m1
       type(t1) :: f
     end function
  end interface
    procedure (f) :: proc
  end subroutine foo
end module m3

use m3
print *,'pass'
end program

