character(len=3)::arr(7)='abc'

if(is_contiguous(arr(2:5)(:2)) .eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end
