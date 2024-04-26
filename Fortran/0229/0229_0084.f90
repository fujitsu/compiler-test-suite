module m1
  type :: t1
     integer :: x=1
  end type t1
end module m1

module m2
  interface
     function   f ()
       use m1
       type(t1) :: f
     end function
  end interface
end module m2

module mm
 contains
  subroutine ss  (proc)
    use :: m2
    use :: m1
    procedure (f ) :: proc
       type(t1) :: v
    v  = proc()
    if ( v%x/=1) print *,9901
  end subroutine
end

module m3
contains
  subroutine sub (proc)
    use :: m2
    use :: mm
    procedure (f ) :: proc
    call ss(proc)
  end subroutine sub
end module m3

use m3
  interface
     function   f2()
       use m1
       type(t1) :: f2
     end function
  end interface
call sub(f2)
print *,'pass'
end program
     function   f2()
       use m1
       type(t1) :: f2
     end function

