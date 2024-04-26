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
  subroutine wws  (proc)
    use :: m2
    use :: m1
    procedure (s1) :: proc
  end subroutine
end

module bbb
use mm
end

print *,'pass'
end program

