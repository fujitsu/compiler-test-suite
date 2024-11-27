integer :: pp1
call ss(pp1)
contains
subroutine ss(dp1)
integer :: dp1
value :: dp1
contiguous :: dp1
print*,dp1
end subroutine
end
