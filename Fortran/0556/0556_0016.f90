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
class(extd_type) :: cptr
class(*),pointer :: ptr1
character(kind=1,len=4),target::ch

ch='PASS'
ptr1=>ch

select type(cptr)
type is (extd_type)
cptr%x = 1
  select type (ptr1)
    TYPE IS(character(len=*,kind=1))
      print *,ch
  end select
end select
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
