integer,target :: trg(10,10,10,10)=9
logical :: ll1 = is_contiguous(trg)
if(ll1 .neqv. .true.) print*,101,'ptr'

print*,'pass'
end
