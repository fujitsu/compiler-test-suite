character :: ch(10)='a'

if(is_contiguous(ch(10:1:-1)) .eqv. .false.) then
 print*,'pass'
else
 print*,101,is_contiguous(ch(10:1:-1))
end if
end
