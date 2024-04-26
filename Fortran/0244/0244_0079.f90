type ty
 character(len=3), contiguous, pointer :: ii(:)
end type

type(ty):: obj

allocate(obj%ii(4))

if(is_contiguous(obj%ii)) print*,'pass'
end
