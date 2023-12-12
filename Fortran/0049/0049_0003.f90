character,pointer::ptr
character,pointer::ptr2
type ty
  character::t1 = 'aa'
end type


integer::a,b
type(ty),target,save ::obj
data a,ptr,ptr2,b /1,NULL(),obj%t1,2/
if(associated(ptr).neqv..false.)print*,"105"
!if(associated(ptr2).neqv..true.)print*,"106"
!if(ptr2.ne.'aa')print*,"101"
if(a.ne.1)print*,"102"
if(b.ne.2)print*,"103"
print*,"PASS"
end
