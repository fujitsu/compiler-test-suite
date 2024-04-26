integer :: ii(5,5) = 2

call ss(ii,ii)

contains
subroutine ss(dd,dd2)
contiguous :: dd2
integer :: dd(:,:),dd2(:,:)
contiguous :: dd
if(all(dd == 2) .and. all(dd2 == 2)) print*,'pass'
end subroutine
end
