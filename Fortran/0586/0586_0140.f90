character*3,target:: t11(3,3)=reshape(['abc','cdf','wsd','iop','vfr','mnp','qaw','sre','zaq'],[3,3])
character*3,parameter:: t12='xyz'
character*2,pointer :: p=>t11(1,1)(2:3)
character*2,pointer::ptr2(:,:)
character*5::arr(3)
integer::arr2(3)
integer,parameter::k=2
data arr, ptr2,arr2 /t12,t12,t12,t11(1:3:k,1:3:k)(2:3),1,2,3/
if (p.ne.t11(1,1)(2:3)) print *,'101'
if(ptr2(1,1).ne.t11(1,1)(2:3))print*,"102",ptr2(1,1)
if(ptr2(1,2).ne.t11(1,3)(2:3))print*,"109",ptr2(1,2)
if(any(arr2.ne.[1,2,3]))print*,"111"
if(arr(1).ne.t12)print*,"101"
print *,'pass'
end

