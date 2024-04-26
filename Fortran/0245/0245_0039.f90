type tt
 character(kind=1,len=3) :: cmp(3)
end type

type(tt),pointer :: obj

logical :: ll11 = is_contiguous(obj%cmp)

if(ll11 .neqv. .true.) print*,101
print*,'pass'
end
