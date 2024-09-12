character(len=2),pointer::arr(:)
integer,target::t1
integer,pointer::ptr2
character(len=3),target::tar1(3) = ['ab','de','xy']
t1=20
data arr,ptr2 /tar1(1:3:1)(1:2),NULL()/
if(any(arr.ne.['ab','de','xy']))print*,"101",arr
if(t1.ne.20)print*,"102"
if(associated(ptr2).neqv..false.)print*,"102"
print*,"PASS"
End 


