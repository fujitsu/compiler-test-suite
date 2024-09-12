program test
type ty
  integer :: x
end type ty

type,extends(ty) :: ty1
  integer :: y
end type ty1

class (*), pointer :: p1(:)
class (*), pointer :: p2(:)
INTEGER, target :: tgt1(4)
INTEGER, target :: tgt2(4)
integer::st1,st2
st1 = 0
st2 = 0
tgt1(2) = 1
tgt2(2) = 3
p1 => tgt1
p2 => tgt2
select type (p1)
  type is(INTEGER)
    select case(p1(2))
      case(1)
        st2=1
      case(2)
        print*,101
    end select
end select

select type (p2)
  type is(INTEGER)
    select case(p2(2))
      case(3)
        st1=1
      case(4)
        print*,102
    end select
end select

if((st1+st2) .EQ.  2) then
  print*,'pass'
else
  print*,113
endif

end program test

