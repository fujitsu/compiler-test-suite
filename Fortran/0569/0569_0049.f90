type NODE(k)
 integer,kind::k
 integer(kind=k),allocatable::alc
 integer,allocatable::alc2(:)
end type

type(NODE(4))::obj
type(NODE(4)),allocatable::obj2
integer::res
allocate(obj%alc)
allocate(obj%alc2(2))

allocate(obj2)
allocate(obj2%alc)
allocate(obj2%alc2(3))

obj%alc=11
obj%alc2=22

obj2%alc=55
obj2%alc2=66

res= pure_fun(obj,obj2)
if(obj%alc /=11)print*,101
if(obj%alc2(1) /=22)print*,102
if(obj2%alc /=55)print*,103
if(obj2%alc2(2) /=66)print*,104
if(res/=44)print*,105
print*,'Pass'
contains

pure function pure_fun(dmy,dmy2)
type(NODE(4)),value::dmy
type(NODE(4)),value::dmy2
integer::pure_fun
dmy%alc = 33
dmy%alc2 = 44

dmy2%alc=10
dmy2%alc2=20
pure_fun=44
end function 
end
