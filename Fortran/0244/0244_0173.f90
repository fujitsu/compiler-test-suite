character(len=:),pointer::aptr(:,:,:)
character(len=3),target :: trg(10,10,10)='abc'
aptr=>trg(:,:,2:6)

if(is_contiguous(aptr(:,:,:)(:)) .neqv. .true.) print*,101
if(is_contiguous(aptr(:,1:10,:)(:)) .neqv. .true.) print*,102
if(is_contiguous(aptr(:,:,2)(:)) .neqv. .true.) print*,103
if(is_contiguous(aptr(:,:,2:)(:)) .neqv. .true.) print*,104

call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
character(len=3),contiguous::dptr(:,:,:)

if(is_contiguous(dptr(:,:,:)(:)) .neqv. .true.) print*,201
if(is_contiguous(dptr(:,1:10,:)(:)) .neqv. .true.) print*,202
if(is_contiguous(dptr(:,:,2)(:)) .neqv. .true.) print*,203
if(is_contiguous(dptr(:,:,2:)(:)) .neqv. .true.) print*,204
if(is_contiguous(dptr(:,:,[2,3])(:)) .neqv. .false.) print*,205

call sub2(dptr(:,:,1:5))
end subroutine

subroutine sub2(dd)
character(len=3)::dd(:,:,:)
if(is_contiguous(dd)) print*,'pass'
end subroutine
end
