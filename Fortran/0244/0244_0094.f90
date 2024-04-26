character :: ch(10,10)='a'

if(is_contiguous(ch(10:1:-1,2:4)) .eqv. .true.) print*,101
if(is_contiguous(ch(10:1:-1,10:1:-1)).eqv. .true. ) print*,102
print*,'pass'
end
