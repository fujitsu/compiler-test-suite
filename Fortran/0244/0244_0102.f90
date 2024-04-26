integer,pointer :: ptr(:,:)
integer,target :: trg(4,4)=2
ptr=>trg(2:,:)
if(is_contiguous(ptr(:,:)) .eqv. .true.) print*,101
ptr=>trg(:,:2)
if(is_contiguous(ptr(:,:)) .eqv. .false.) print*,102
print*,'pass'
end
