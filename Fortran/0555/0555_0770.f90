program test
type ty
  integer :: x=5
end type ty

type,extends(ty) :: ty1
  integer :: y=6
end type ty1

class (*), allocatable :: p1(:)
TYPE(ty1), pointer :: p2
TYPE(ty1), target :: tgt2

tgt2%x = 3
p2 => tgt2
ALLOCATE(ty1::p1(5))
select type (p1)
  class is(ty1)
    select case(p2%x)
      case(3)
        if(p1(1)%x /= 5 .and. p1(4)%y /= 6) then 
          print*,100 ,p1(1)%x,p1(4)%y 
        else
          print*,'pass'
        endif  
      case(4)
        print*,101
    end select

end select
end program test

