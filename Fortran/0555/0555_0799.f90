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

type(ty2),save,target :: tar
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
class(ty),save ,pointer :: ptr=>NULL()
type(ty2),target :: tar1
integer ,save :: count=0

if(count /=0)then
select type(ptr)
  TYPE IS(TY)
  print *,"pass"
  TYPE IS(ty2)
  ptr%ii =100
  ptr%kk =90
  if(ptr%ii /=100)then
  print *,201
  else
  print *,"pass"
  endif
  CLASS IS(TY)
  ptr%ii =80
end select
else 
if (SAME_type_AS(ptr,tar1) .neqv. .TRUE.)then
print *,"pass"
else
print *,201
endif
endif
ptr=>tar
count =1
end subroutine sub

subroutine sub1()
use mod1
INTERFACE
subroutine sub()
use mod1
end subroutine
end interface
call sub()

end subroutine sub1

