block
real ,dimension(10) :: var
real ,dimension(20) :: array
pointer (ptr,var)
ptr = loc(array)
var(1) = 1.0
print *,array(1)
end block
end
