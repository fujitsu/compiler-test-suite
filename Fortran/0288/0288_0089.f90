call s
print *,'pass'
end
subroutine s
real ,dimension(10) :: var
real ,dimension(20) ,target :: array
pointer (ptr,var)
ptr = loc(array)
var(1) = 1.0
if(array(1).ne.1.0) print *,'err'
end
