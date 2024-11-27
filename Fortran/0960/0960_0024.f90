Program main

type ty
class(*),allocatable :: calc(:)
end type

type ty1
integer :: kk
type(ty):: obj_1
end type ty1

type,extends(ty1):: ty2
class(*),allocatable :: calc_1
end type ty2

type(ty2) :: obj
class(*),allocatable :: obj4
class(*),allocatable :: obj5(:)
integer :: ii(10) = 2

ii(5)=5
obj = ty2(ty1(10,ty(ii)),ii(5))      

allocate(obj4,source=obj%calc_1)
select type(obj4)
Type Is(real)
print *,"fail"
type is(INTEGER)
if(obj4 /=5) then
print *,"FAIL"
else 
print *,"PASS"
ENDIF
end select

allocate(obj5,source=obj%ty1%obj_1%calc)
select type(obj5)
Type Is(real)
print *,"fail"
type is(INTEGER)
if(obj5(5) /=5) then 
print *,"FAIL"
else
print *,"PASS"
endif
end select


End program
