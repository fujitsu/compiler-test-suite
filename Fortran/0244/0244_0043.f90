integer, contiguous, pointer :: ii(:)
integer :: i=1,j=2
integer,target :: tgt(14)=23

ii=>tgt

if(is_contiguous(ii)) print*,'pass'
if(is_contiguous(ii(::2))) print*,101
if(is_contiguous(ii([2,3,4]))) print*,102
if(is_contiguous(ii(::i)) .neqv. .true.) print*,103
if(is_contiguous(ii(::j))) print*,104
end
