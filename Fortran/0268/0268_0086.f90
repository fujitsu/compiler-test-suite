real::a
real::b
real::c
real::d
real::e
real::f
real,pointer::ptr
real,target::t1=12
data a,b,c,ptr,d,e,f /-12.78,+1.6E3,2.1,t1,-16.0,0.45D-4,.123/
if(a.ne.-12.78)print*,"101"
if(b.ne.+1.6E3)print*,"102"
if(c.ne.2.1)print*,"103"
if(ptr.ne.12)print*,"104"
if(d.ne.-16.0)print*,"104"
if(f.ne..123)print*,"106"
print*,"PASS"
end
