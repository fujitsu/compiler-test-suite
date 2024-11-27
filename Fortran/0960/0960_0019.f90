Program main
type ty
class(*),allocatable :: calc(:)
end type
type(ty) :: obj
class(*),allocatable :: obj1(:)

obj = ty(fun()) 

allocate(obj1,source=obj%calc)
select type(obj1)
type is(INTEGER)
print *,"FAIL"
TYPE IS(character(len=*))
if(len(obj1) /=10)then
print *,"FAIL"
else 
print *,"PASS"
endif
end select

contains 
function fun()
character(len=10),allocatable ::fun(:)
allocate(fun(10))
END function
END Program main
