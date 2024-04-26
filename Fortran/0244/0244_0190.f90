type ty
 integer :: ii=2
end type

type,extends(ty) :: ty2
 integer :: jj=4
end type

type(ty2),allocatable :: trg(:,:,:,:)
integer::i=2

allocate(ty2::trg(10,1:22,8,10))

call sub(trg)

contains
subroutine sub(dptr)
class(*)::dptr(:,:,:,:)
if(is_contiguous(dptr(:,i-1:1+1+20,:,i:6:1)) .eqv. .true.) then
 print*,'pass'
else
 print*,is_contiguous(dptr(:,i-1:1+1+20,:,i:6:1)),101
endif
end subroutine
end
