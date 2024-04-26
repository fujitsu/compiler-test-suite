module m1
  type :: t1
     integer :: x=1
  end type t1
end module m1

module m2
  interface
     subroutine s1(v)
       use m1
       type(t1) :: v
     end subroutine s1
  end interface
end module m2

module mm
 contains
  subroutine ss  (proc)
    use :: m2
    use :: m1
    procedure (s1) :: proc
    type(t1) :: vv
    call proc(vv)
  end subroutine
end

module m3
    use :: m2
contains
  subroutine sub (proc)
    use :: m2
    use :: mm
    procedure (s1) :: proc
    call ss(proc)
  end subroutine sub
end module m3

use m3
  interface
     subroutine s2(v )
       use m1
       type(t1) :: v 
     end subroutine
  end interface
call sub(s2)
print *,'pass'
end program
     subroutine s2(v )
       use m1
       type(t1) :: v 
        if (v%x/=1) print *,202
     end subroutine 

