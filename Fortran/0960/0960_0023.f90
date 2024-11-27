Program main
type ty1
integer :: kk=10
end type ty1

type ty
class(*),allocatable :: calc(:)
class(*),allocatable :: calc_1
class(*),allocatable :: calc_2(:)
end type

type(ty) :: obj
type(ty1) :: obj3(5)
class(*),pointer :: obj1(:)
class(*),allocatable:: obj2

class(*),allocatable :: obj4(:)
class(*),allocatable :: obj5
class(*),allocatable :: obj6(:)
integer :: ii(10) = 2

allocate(obj1,source=ii)
allocate(character (len=5)::obj2)

obj = ty(obj1,obj2,obj3)      

allocate(obj4,source=obj%calc)
select type(obj4)
Type Is(real)
print *,"fail"
type is(INTEGER)
if(obj4(1) /=2) then
print *,"FAIL"
else if (sizeof(obj4)/=40)then
print *,"FAIL"
else 
print *,"PASS"
ENDIF
end select

allocate(obj5,source=obj%calc_1)
select type(obj5)
Type Is(real)
print *,"fail"
type is(INTEGER)
print *,"FAIL"
TYPE IS(character(len=*))
print *,"PASS"
end select

allocate(obj6,source=obj%calc_2)
select type(obj6)
Type Is(real)
print *,"fail"
type is(INTEGER)
print *,"FAIL"
TYPE IS(character(len=*))
print *,"FAIL"
TYPE IS(ty1)
if(obj6(1)%kk /=10)then
print *,"FAIL"
else 
print *,"PASS"
endif
TYPE IS(ty)
print *,"FAIL"
end select

End program
