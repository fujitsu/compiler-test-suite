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
  subroutine sub(p1,p2)
    use selmod
    class (*) :: p1(:), p2(:)
  end subroutine
end interface

type(ty) :: tgt1(3)
type(ty1) :: tgt2(3)
tgt1(2)%x = 1
tgt2(2)%x = 2
call sub(tgt1,tgt2)
end program test

subroutine sub(p1,p2)
use selmod
class (*) :: p1(:), p2(:)
select type (p1)
  type is (ty)
    select type (p2)
      type is (ty1)
        if( (p1(2)%x .EQ. 1) .AND. (p2(2)%x .EQ. 2) ) then
          print*,'pass'
        else
          print*,112
        endif
    end select
end select
end subroutine
