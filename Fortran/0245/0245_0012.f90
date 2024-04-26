integer :: pp1(3,4,5)=2
call ss(pp1,pp1)
contains
subroutine ss(dp1,dp2)
integer,optional,contiguous :: dp1(:,:,:)
integer,intent(inout),contiguous :: dp2(:,:,:)
print*,dp1,dp2
end subroutine
end
