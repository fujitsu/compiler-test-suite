type tt
 character(kind=1,len=3) :: trg(10,10,10,4)='abc'
end type

type(tt) :: obj

logical :: ll11 = is_contiguous(obj%trg)

if(ll11 .neqv. .true.) print*,101
print*,'pass'
end
