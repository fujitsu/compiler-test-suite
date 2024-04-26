character,pointer :: ch(:)
allocate(ch(10))
ch='a'

if(is_contiguous(ch(10:1:-1)) .eqv. .true. ) print*,101
print*,'pass'
end
