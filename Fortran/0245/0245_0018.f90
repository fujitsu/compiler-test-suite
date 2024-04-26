type tt
 integer :: ptr=2
end type

class(tt) :: obj(:)
contiguous :: obj
pointer :: obj

allocate(obj(3))
if(all(obj%ptr == 2)) print*,'pass'
end
