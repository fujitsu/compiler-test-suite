complex,parameter::aa(5) =[(10.2,30.5),(10.2,30.5),(10.2,30.5),(10.2,30.5),(10.2,30.5)]
real::r(5)
integer::arr(5)
integer,pointer::ptr
real,pointer::ptr2
integer,target::t1=30
complex,target::t2 =(12.2,45.9)
data r(1:5:2),arr(1:5:2),ptr,ptr2 /aa(1)%re,aa(2)%re,aa(3)%re,10,10,10,t1,t2%re/
if(any(r.ne.[10.2,0.0,10.2,0.0,10.2]))print*,"101"
if(any(arr.ne.[10,0,10,0,10]))print*,"102"
if(associated(ptr).neqv..true.)print*,"103"
if(associated(ptr2).neqv..true.)print*,"103"
if(ptr.ne.30)print*,"104"
if(ptr2.ne.12.2)print*,"104"
print*,"PASS"
end

