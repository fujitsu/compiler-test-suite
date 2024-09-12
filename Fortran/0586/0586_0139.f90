character*5,target:: t11(3,3)='abcde'
character,parameter:: t12='abcde'
character*2,pointer :: p=>t11(1,1)(2:3)
character*2,pointer::ptr2(:,:)
character*5::arr(3)
data arr, ptr2 /t12,t12,t12,t11(1:3:2,1:3:2)(2:3)/
if (p.ne.t11(1,1)(2:3)) print *,'101'
if(ptr2(1,1).ne.t11(1,1)(2:3))print*,"102",ptr2(1,1)
if(ptr2(1,1).ne.t11(1,3)(2:3))print*,"103",ptr2(1,2)
print *,'pass'
end

