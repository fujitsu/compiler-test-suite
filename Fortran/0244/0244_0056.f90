type tt
 integer :: trg(10,10,10,10)
end type

type(tt) :: obj
integer::i=1,j=2
obj%trg=12

if(is_contiguous(obj%trg) .neqv. .true.) print*,101,'obj%trg'
if(is_contiguous(obj%trg(:,:,:,:)) .neqv. .true.) print*,102,'obj%trg(:,:,:,:)'
if(is_contiguous(obj%trg(2:,:,:,:)) .neqv. .false.) print*,103,'obj%trg(2:,:,:,:)'
if(is_contiguous(obj%trg(2,:,:,:)) .neqv. .false.) print*,104,'obj%trg(2,:,:,:)'
if(is_contiguous(obj%trg(:,:,:,2)) .neqv. .true.) print*,105,'obj%trg(:,:,:,2)'
if(is_contiguous(obj%trg(:,:,:,2:)) .neqv. .true.) print*,106,'obj%trg(:,:,:,2:)'
if(is_contiguous(obj%trg(:,2:,:,:)) .neqv. .false.) print*,107,'obj%trg(:,2:,:,:)'
if(is_contiguous(obj%trg(:,2,:,:)) .neqv. .false.) print*,108,'obj%trg(:,2,:,:)'
if(is_contiguous(obj%trg(:,i,:,:)) .neqv. .false.) print*,110,'obj%trg(:,i,:,:)'
if(is_contiguous(obj%trg(:,:,:,:2)) .neqv. .true.) print*,111,'obj%trg(:,:,:,:2)'
if(is_contiguous(obj%trg(:,:,:,::2)) .neqv. .false.) print*,112,'obj%trg(:,:,:,::2)'
if(is_contiguous(obj%trg(:,:,:,::i)) .neqv. .true.) print*,113,'obj%trg(:,:,:,::i)'
if(is_contiguous(obj%trg(:,:,:,::j)) .neqv. .false.) print*,114,'obj%trg(:,:,:,::j)'
if(is_contiguous(obj%trg(:,:,1:10,:)) .neqv. .true.) print*,115,'obj%trg(:,:,1:10,:)'
if(is_contiguous(obj%trg(:,:,:,[1,2,3,4,5,6,7,8,9,10])) .neqv. .false.) print*,116,'obj%trg(:,:,:,[1,2...])'
if(is_contiguous(obj%trg(i:j*5,:ff(10),1:10,i+i-i:ff(9)+i)) .neqv. .true.) print*,115,'obj%trg(:,:,1:10,:)'

print*,'pass'

contains
function ff(dd)
 integer :: ff,dd
 ff=dd
end function
end
