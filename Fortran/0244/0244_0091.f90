character(len=3)::arr(3,4)='abc'

if(is_contiguous(arr(2,:)) .eqv. .false.) print*,'pass'
end
