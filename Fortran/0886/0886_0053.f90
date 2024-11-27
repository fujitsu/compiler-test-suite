type tt
 character(kind=1,len=3),pointer,contiguous :: ptr(:,:,:,:)
end type

character(kind=1,len=3),target :: trg(10,10,10,4)='abc'
type(tt) :: obj

logical :: ll11 = is_contiguous(obj%ptr)
obj%ptr => trg

if(ll11 .neqv. .true.) print*,101
print*,'pass'
end
