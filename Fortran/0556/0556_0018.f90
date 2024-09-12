program main
integer :: i

type x1
 integer::m
end type

type,extends(x1)::x2
 integer::n
end type

type(x2),target::pt
class(*),pointer::cptr
cptr=>pt
i = 1

select case(i)
  case(1)
    select type(cptr)
      TyPe iS(x2)
        print *,"PASS"
    end select
  case(0)
    print *,"FAIL"
end select
end program
