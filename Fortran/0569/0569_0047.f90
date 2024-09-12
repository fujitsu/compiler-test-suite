type NODE
 integer,allocatable::alc
 integer,allocatable::alc2
end type

type(NODE),allocatable::obj(:,:)
type(NODE),allocatable::obj2(:,:)
integer::res
allocate(obj(2,2))
allocate(obj(1,1)%alc)
allocate(obj(1,2)%alc2)

allocate(obj2(3,2))
allocate(obj2(2,1)%alc)
allocate(obj2(2,2)%alc2)

obj(1,1)%alc=11
obj(1,2)%alc2=22

obj2(2,1)%alc=55
obj2(2,2)%alc2=66

res=pure_func(obj,obj2)
if(obj(1,1)%alc /=11)print*,101
if(obj(1,2)%alc2 /=22)print*,102
if(obj2(2,1)%alc /=55)print*,103
if(obj2(2,2)%alc2 /=66)print*,104
if(res /= 198)print*,105,res
print*,'Pass'
contains

pure function pure_func(dmy,dmy2)
type(NODE),value::dmy(2,2)
type(NODE),intent(in)::dmy2(3,2)
integer::pure_func

dmy(1,1)%alc = 33
dmy(1,2)%alc2 = 44

pure_func= dmy(1,1)%alc + dmy(1,2)%alc2 + dmy2(2,1)%alc + dmy2(2,2)%alc2

end function        
end
