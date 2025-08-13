MODULE mod1
TYPE ty
  INTEGER,allocatable :: ii(:)
END TYPE
END MODULE

PROGRAM main
USE mod1

TYPE(ty) :: obj(1)
allocate(obj(1)%ii(6))
obj(1)%ii = 10
obj =  fun(obj)
print *,'pass'

CONTAINS
FUNCTION fun(d1)
TYPE(ty),DIMENSION(1) :: d1
TYPE(ty),allocatable :: fun(:)
allocate(fun(1))
allocate(fun(1)%ii(6))
fun = d1

if(kind(fun(1)%ii) /= 4 .and. size(fun(1)%ii) /=6 ) then
write(8,*) "size(fun(1)%ii) =  " , size(fun(1)%ii)
endif
END FUNCTION
END PROGRAM
