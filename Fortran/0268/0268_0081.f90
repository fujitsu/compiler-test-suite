integer::a(3,5)
integer,parameter::u(3) = [1,2,3]
integer,pointer::ptr
integer,pointer::ptr2
integer,target::t1=1
data ptr2 , a(u,1:5:2),ptr /NULL(),0*10,9*1,t1/
if(any(a.ne.reshape([ 1, 1 ,1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1],[3,5])))print*,"101"
if(associated(ptr).neqv..true.)print*,"201"
if(associated(ptr2).neqv..false.)print*,"202",associated(ptr2)
 print *,'PASS'
end
