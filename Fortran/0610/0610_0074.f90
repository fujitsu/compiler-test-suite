module mod1
implicit none

type ty
 complex(kind = 8) :: cmp
end type

type,extends(ty) :: ty2
  complex(kind = 8) :: cmp1,cmp2
end type

end module

program test
use mod1
implicit none

type (ty2), target :: tgt

type total
  class (*), pointer :: p
end type

type(total) :: objj

tgt%cmp1 = (21.0,-10.20)
tgt%cmp2 = (22.0,-11.20)

objj%p => tgt

select type (Ao => objj%p)
   class  is(ty2)
   select case(int(aimag(Ao%cmp2)))
     case(-10)
      print*,103
     case(-11)
       print*,'pass'
    end select
end select

end program test
