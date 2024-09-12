module m1
integer,target,save :: trg=1
integer,target,save :: trg2(5)=[1,2,3,4,5]
TYPE ty
      integer,pointer :: ptr2=>trg
      integer,pointer :: ptr3(:)=>trg2(1:5:2)
end type
end
use m1,ty2=>ty,trg3=>trg
type(ty2)::obj
if(obj%ptr2.ne.1)print*,"101"
if(any(obj%ptr3.ne.[1,3,5]))print*,"102"
if(trg3.ne.1)print*,"102"
print*,"PASS"
end
      

