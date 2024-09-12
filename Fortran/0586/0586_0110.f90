integer::a
integer::b
integer::c
integer::d
integer::e
integer*8::f
integer,pointer::ptr
integer,target::t1=12
data a,b,c,ptr,d,e,f /473,+54,-101,t1,21_2,21_2,1976354279568241_8/
if(a.ne.473)print*,"101"
if(b.ne.54)print*,"102"
if(c.ne.-101)print*,"103"
if(ptr.ne.12)print*,"104"
if(d.ne.21)print*,"103"
if(e.ne.21)print*,"103"
if(f.ne.1976354279568241)print*,"103"
print*,"PASS"
end
