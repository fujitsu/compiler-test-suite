type NODE
 integer,allocatable::alc
 integer,allocatable::alc2(:)
end type

type(NODE)::obj
type(NODE),allocatable::obj2
integer::res
allocate(obj%alc)
allocate(obj%alc2(2))

allocate(obj2)
allocate(obj2%alc)
allocate(obj2%alc2(2))

obj%alc=11
obj%alc2=22

obj2%alc=55
obj2%alc2(1)=66
obj2%alc2(2)=10

res=pure_func(obj,obj2)
if(obj%alc /=11)print*,101
if(obj%alc2(1) /=22)print*,102
if(obj2%alc /=55)print*,103
if(obj2%alc2(1) /=66)print*,104
if(obj2%alc2(2) /=10)print*,105
if(res /= 262)print*,106,res
print*,'Pass'
contains
pure function pure_func(dmy,dmy2)
type(NODE),value::dmy
type(NODE),value::dmy2
integer::pure_func

dmy%alc = 33
dmy%alc2 = 44
dmy2%alc = 77 
dmy2%alc2(1) = 88
dmy2%alc2(2) = 20

pure_func= dmy%alc + dmy%alc2(1) + dmy2%alc + dmy2%alc2(1) + dmy2%alc2(2)

end function        
end
