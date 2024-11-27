integer :: pp1(3,4,5)
call ss(pp1)
contains
subroutine ss(dp1)
integer :: dp1(3,4,5)
intent(inout) :: dp1
contiguous :: dp1
print*,dp1
end subroutine
end
