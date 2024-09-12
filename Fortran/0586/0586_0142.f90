character*5,target:: t11='abcde'
type ty
character*2,pointer :: p=>t11(2:3)
end type
type ty2
character*2,pointer::ptr2
end type
type(ty2)::obj2
type(ty)::obj
integer::arr(3)
data arr,obj2%ptr2/1,2,3,t11(2:3)/
if (obj%p.ne.t11(2:3)) print *,'101'
if(associated(obj2%ptr2).neqv..true.)print*,"102"
if(any(arr.ne.[1,2,3]))print*,"104"
print *,'pass'
end

