module m1
  type :: t1
     integer :: x
  end type t1
end module m1

module m2
  interface
     subroutine s1(p1)
       use m1
       type(t1) :: p1
     end subroutine s1
  end interface
end module m2

module m3
    use :: m2
contains
  subroutine sub (proc)
    procedure (s1) :: proc
  end subroutine sub
end module m3

use m3
print *,'pass'
end program

