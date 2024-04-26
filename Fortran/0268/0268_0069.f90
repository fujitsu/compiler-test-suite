complex::arr(3)
complex cmp(2)
integer,pointer::ptr
integer,target::t1=1
DATA (cmp(k), k=1,2) ,(arr(i),i=1,2),ptr /2*(1,2),(10,20),(30,40),t1/
if(ptr.ne.1)print*,"103"
if(arr(3).ne.(0,0))print*,"101",arr
if(arr(1).ne.(10,20))print*,"102"
if(cmp(1).ne.(1.0,2.0))print*,"103"
if(cmp(2).ne.(1.0,2.0))print*,"104"
if(associated(ptr).neqv..true.)print*,"106"
print*,"PASS"
end
