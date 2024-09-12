program test
type ty
  integer :: x
end type ty

type,extends(ty) :: ty1
  integer :: y
end type ty1

class (*), pointer :: p1
INTEGER, pointer :: p2
INTEGER, target :: tgt1
INTEGER, target :: tgt2
INTEGER::st1
st1 = 0
tgt1 = 1
tgt2 = 3
p1 => tgt1
p2 => tgt2
select type (p1)
  type is(INTEGER)
    select case(p2)
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

