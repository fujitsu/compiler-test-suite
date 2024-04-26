integer,pointer,contiguous::aptr(:,:,:)
integer,pointer::aptr2(:,:,:)
integer,target :: trg(10,10,10)

trg=2
trg(:,:,2:6) = 3

aptr=>trg(:,:,2:6)
aptr2 => aptr

if(sub(aptr2)==1) print*,'pass'

contains
function sub(dptr)
integer::dptr(:,:,:)
integer :: sub
if(is_contiguous(dptr(:,4,:)) .eqv. .false.) then
 sub=1
else
 sub=0
endif
end function
end
