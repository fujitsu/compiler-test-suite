integer, DIMENSION (3, 3) :: SKEW
integer,pointer::ptr
integer,pointer::ptr2
integer,target::t1=30
integer::arr(5)
integer::arr2(5)
integer::arr3(5)
integer::k1
real::r
character(len=2)::c
integer,parameter::p=5
DATA ((SKEW (K, J), J = 1, 3), K = 1, 3),ptr ,(arr(i),i=1,2) /1,2,3,4,5,6,7,8,9,t1,1,2 / 
DATA k1, (arr2(i),i=1,4),r,(arr3(i),i=1,p),ptr2,c /1,2,3,4,5,6.9,7,8,9,10,11,t1,'ab' / 
if(any(SKEW.ne.reshape([1, 4, 7, 2, 5, 8, 3, 6, 9],[3,3])))print*,"102",SKEW
if(any(arr.ne.[1,2,0,0,0]))print*,"103"
if(any(arr2.ne.[2,3,4,5,0]))print*,"111" ,arr2
if(any(arr3.ne.[7,8,9,10,11]))print*,"104"
if(k1.ne.1)print*,"105"
if(r.ne.6.9)print*,"106"
if(c.ne.'ab')print*,"107",c
if(associated(ptr).neqv..true.)print*,"1011"
if(associated(ptr2).neqv..true.)print*,"1011"
print*,"PASS"
end
