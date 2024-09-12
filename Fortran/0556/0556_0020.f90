Module Mod1
type ::  base_type
  integer :: x
end type base_type
type, extends(base_type) :: extd_type
  integer :: y
end type extd_type
End Module

Module Mod2
USE Mod1
 
contains
subroutine sub(cptr)
integer::I
class(extd_type) :: cptr
DO 50, I = 1, 10
  select type(cptr)
    type is(extd_type)
      if (I .EQ. 10) print *,"PASS"
  end select
50 CONTINUE
end subroutine
end module

program test
  USE Mod2
 interface
  subroutine sub1(cptr1)
    use Mod2
    class (extd_type),allocatable :: cptr1
  end subroutine
 end interface 

 class (extd_type),allocatable :: cptr2
 allocate(cptr2)
 cptr2%y = 1
 call sub1(cptr2)

end program test

subroutine sub1(cptr1)
  use Mod2
  class (extd_type),allocatable :: cptr1

 select type (cptr1)
  type is (extd_type)
  call sub(cptr1)
 end select
end subroutine sub1
