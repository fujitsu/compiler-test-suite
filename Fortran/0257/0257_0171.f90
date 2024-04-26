integer,pointer :: ptr(:)
integer,target::t1(5)=[1,2,3,4,5]
integer,target::t2(5)=[1,2,3,4,5]
integer,target::t3(5)=[1,2,3,4,5]
integer,target::t4(5)=[1,2,3,4,5]
integer::k=1
ptr =>t1(1:5:k) 
call sub(ptr) 
ptr =>t2(1:5:k) 
call sub(ptr(:))
k=2
ptr =>t3(1:5:k)
call sub2(ptr) 
ptr =>t4(1:5:k)
call sub2(ptr(:))
if(any(t1.ne.[11,12,13,14,15]))print*,"101"
if(any(t2.ne.[11,12,13,14,15]))print*,"102"
if(any(t3.ne.[11,2,13,4,15]))print*,"103"
if(any(t4.ne.[11,2,13,4,15]))print*,"104"
print*,"Pass"
contains
subroutine sub(dmy)
  integer::dmy(5)
  if(any(dmy.ne.[1,2,3,4,5]))print*,"105"
 dmy=[11,12,13,14,15]
end subroutine
subroutine sub2(dmy)
  integer::dmy(3)
  if(any(dmy.ne.[1,3,5]))print*,"106"
 dmy=[11,13,15]
end subroutine
end

