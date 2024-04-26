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
  end subroutine
end

subroutine sst
use mm
end

print *,'pass'
end program
     function   f2()
       use m1
       type(t1) :: f2
     end function

