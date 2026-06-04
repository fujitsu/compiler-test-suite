call sub()
contains
subroutine sub()
integer :: arr(4),brr(4),crr(4),drr(4)
type ty
 integer::ii(4)
 integer::jj(4)
end type
type(ty)::obj
integer::jj(4)
integer,pointer::ptr
integer,pointer::ptr1
integer,pointer::ptr2
integer,target,save::tar=30
 data ((arr(ii+jj-1),integer::jj=1,2),(brr(ii+jj-1),integer::jj=1,2), integer::ii=1,3,2),ptr /1,2,3,4,5,6,7,8,tar/ 
 data ((obj%ii(ii+jj-1),integer::jj=1,2),(obj%jj(ii+jj-1),integer::jj=1,2), integer::ii=1,3,2),ptr1 /1,2,3,4,5,6,7,8,tar/

 data ptr2 /tar/

 
 if(any(arr /= [1,2,5,6])) print*,101,arr
 if(any(brr /= [3,4,7,8])) print*,102,brr
 if(any(obj%ii /= [1,2,5,6])) print*,103
 if(any(obj%jj /= [3,4,7,8])) print*,104
 if(associated(ptr).neqv..true.)print*,"101"
 if(associated(ptr1).neqv..true.)print*,"102"
 if(associated(ptr2).neqv..true.)print*,"103"
 if(ptr.ne.30)print*,"104"
 if(ptr2.ne.30)print*,"105"
 if(ptr1.ne.30)print*,"116"
print*,"PASS"
end
end

