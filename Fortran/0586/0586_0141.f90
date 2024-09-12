character*5,target:: t11='abcde'
character*2,pointer :: p=>t11(2:3)
character*2,pointer::ptr2
integer::arr(3)
data arr,ptr2/1,2,3,t11(2:3)/
if (p.ne.t11(2:3)) print *,'101'
if(ptr2.ne.t11(2:3))print*,"102"
if(any(arr.ne.[1,2,3]))print*,"104"
print *,'pass'
end

