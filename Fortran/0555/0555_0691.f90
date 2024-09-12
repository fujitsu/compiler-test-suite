MODULE selmod

type ty
  integer :: x=1
end type ty

type,extends(ty) :: ty1
  integer :: y=1
end type ty1

END MODULE

program test
use selmod

interface
  subroutine sub(p1)
    use selmod
    class (*),POINTER :: p1
  end subroutine
end interface 

CLASS(*),POINTER :: ptr
call sub(ptr)
end program test

subroutine sub(p1)
use selmod
 
class (*),POINTER :: p1
type(ty) :: p2

ALLOCATE(ty::p1)
select type (p1)
  type is (ty)
    p1%x=4
    p2 = p1
    if(p2%x .EQ. 4) then
      print*,'pass'
    else
      print*,101
    endif
  type is(ty1)
    print*,102
end select
end subroutine
