program test
type ty
  integer :: x
end type ty
type,extends(ty) :: ty1
  integer :: y
end type ty1

type (ty), target :: tgt1
type (ty1), target :: tgt2
class (ty), pointer :: p1, p2
tgt1%x = 1
tgt2%x = 2
tgt2%y = 3
p1 => tgt1
p2 => tgt2

select type (p2)
  class is(ty1)
    select case(p2%y)
      case(1)
        print*,'value 1'
      case(3)
        select type (p2)
         type is (ty1)
          print *,"PASS"
        end select
    end select
 end select

end program test
