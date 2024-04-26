integer,pointer::aptr(:,:,:)
integer,pointer::aptr2(:,:,:)
integer,target :: trg(3:5,3:5,2:5)=9

trg=2
trg(:,:,3:4) = 3

aptr=>trg(:,:,3:4)
aptr2 => aptr

if(is_contiguous(aptr(:3,1:,:)) .neqv. .true.) print*,200
if(is_contiguous(aptr(:,:3,:)) .neqv. .true.) print*,201
if(is_contiguous(aptr2(1:,:3,:)) .neqv. .true.) print*,202
if(is_contiguous(trg(:5,3:,:)) .neqv. .true.) print*,203
call sub(aptr2)

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(:,:,:)) .eqv. .true.) then
 if(is_contiguous(dptr(:,1:3,2))) print*,'pass'
else
 print*,101
endif
end subroutine
end
