program test
type ty
  integer :: x
end type ty

type,extends(ty) :: ty1
  integer :: y
end type ty1

class (*), pointer :: p1
TYPE(ty1), pointer :: p2
TYPE(ty), target :: tgt1
TYPE(ty1), target :: tgt2
INTEGER::st1
st1 = 0
tgt1%x = 1
tgt2%x = 3
p1 => tgt1
p2 => tgt2
select type (p1)
  type is(ty)
    select case(p2%x)
      case(3)
        st1=1
      case(4)
        print*,101
    end select

end select
if(st1 .EQ. 1) then
  print*,'pass'
else 
  print*,102
endif
end program test
