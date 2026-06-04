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
    class (*),POINTER :: p1(:,:)
  end subroutine
end interface 

CLASS(*),POINTER :: ptr(:,:)
ALLOCATE(ty::ptr(4,5))
call sub(ptr)
end program test

subroutine sub(p1)
use selmod
 
class (*),POINTER :: p1(:,:)
type(ty) :: p2(4,5)

select type (A=>p1)
  type is (ty)
    A(1,4)%x=3
    p2 = A
    select type (A=>p1)
     type is(ty1)
        print*,112
     type is (ty)
       if(p2(1,4)%x .EQ.  A(1,4)%x) then
        print*,'pass'
      else
        print*,101
      endif
   end select
  type is(ty1)
    print*,102
end select
end subroutine
