Program main
type ty
class(*),allocatable :: calc
end type

type(ty) :: obj
character(len=4) :: ch = "acde"
class(*),allocatable :: obj2

obj = ty(ch)
allocate(obj2,source= obj%calc)

select type(obj2)
TYPE IS(INTEGER)
print *,"FAIL"
TYPE IS(INTEGER(KIND=8))
print *,"FAIL"
TYPE IS(character(len=*))
if(len(obj2) /=4)then
print *,"FAIL"
else
print *,"PASS"
endif
end select  
end Program main
