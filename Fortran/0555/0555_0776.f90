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
    class (*) :: p1(:,:)
  end subroutine
end interface 

type(ty) :: tgt1(4,5)

tgt1%x=4
tgt1(3,2)%x=6
call sub(tgt1)
end program test

subroutine sub(p1)
use selmod 
 
class (*) :: p1(:,:)
type(ty) :: p2(4,5)

p2%x=9
p2(4,5)%x=19
select type (p1)
  type is (ty)
    p1 = p2
    if(p1(4,5)%x == 19 .and. p1(2,5)%x ==9) then
      print*,'pass'
    else
      print*,101
    endif
  type is(ty1)
    print*,102
end select
end subroutine
