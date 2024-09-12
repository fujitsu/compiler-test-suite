program test
type ty
  integer :: x=3
end type ty

type,extends(ty) :: ty1
  integer :: y=4
end type ty1

class (*), allocatable :: p1(:)
TYPE(ty1), pointer :: p2
TYPE(ty1), target :: tgt2
INTEGER::st1

st1=0
tgt2%x = 3
p2 => tgt2
ALLOCATE(ty1::p1(5))
select type (p1)
  class default
    select case(p2%x)
      case(3)
        st1=1
        if(st1/=1) then
          print*,100  
        else
          print*,'pass'
        endif  
      case(4)
        print*,101
    end select

end select
end program test

