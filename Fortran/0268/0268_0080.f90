integer::a(3,4)
integer,parameter::u(3) = [1,2,3]
integer,parameter::v(4) = [1,2,3,4]
integer,pointer::ptr
integer,target::t1=20
data a(u,v),ptr /6, 8, 7, 1, 3, 2, 1, 3, 2, 11, 13, 12,t1/
if(any(a.ne.reshape([6, 8, 7, 1, 3, 2, 1, 3, 2, 11, 13, 12],[3,4])))print*,"103"
if(associated(ptr).neqv..true.)print*,"104"
if(ptr.ne.20)print*,"101"
 print *,'PASS'
  end
