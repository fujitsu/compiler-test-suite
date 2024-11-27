integer :: pp1(3,4,5)
call ss(pp1)
contains
subroutine ss(dp1)
integer,contiguous,optional:: dp1(3,4,5)
print*,dp1
end subroutine
end
