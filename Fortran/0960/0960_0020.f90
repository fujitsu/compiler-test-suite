Program main

type ty
class(*),allocatable :: calc
end type

type ty1
integer :: ii
type(ty) :: obj
end type ty1

type(ty1) :: obj_ty1

class(*),allocatable :: obj1

obj_ty1 = ty1(5,ty(fun())) 

allocate(obj1,source=obj_ty1%obj%calc)
select type(obj1)
type is(INTEGER)
print *,"FAIL"
TYPE IS(character(len=*))
if(len(obj1) /=20)then
print *,"FAIL"
else 
print *,"PASS"
endif
end select

contains 
function fun()
class(*),allocatable ::fun
allocate(character(len=20)::fun)
END function
END Program main
