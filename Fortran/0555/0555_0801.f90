MODULE MOD1
type ty
integer :: ii=10
END TYPE ty

TYPE,EXTENDS(TY):: TY2
INTEGER :: KK=20
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
INTEGER :: RR=30
END TYPE ty3

class(ty2),allocatable :: obj_alloc
END MODULE MOD1

program main
use mod1

INTERFACE
subroutine sub()
use mod1
end subroutine

subroutine sub1()
use mod1
end subroutine

END INTERFACE

call sub()
call sub1()
END Program 

subroutine sub()
use mod1
type(ty2) :: tar1

if (SAME_type_AS(obj_alloc,tar1) .neqv. .TRUE.)then
print *,201
else
print *,"pass"
endif

allocate(ty3 :: obj_alloc)
end subroutine sub

subroutine sub1()
use mod1

select type(obj_alloc)
  TYPE IS(ty2)
  print *,401
  TYPE IS(TY3)
  if(obj_alloc%rr /=30)then 
  print *,505
  else
  print *,"pass"
  endif
end select
end subroutine sub1

