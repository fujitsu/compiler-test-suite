call aa([2,3,4],[2,3,4])

contains
subroutine aa(dd,dd2)
integer,contiguous :: dd2(:)
integer :: dd(:)
print*,is_contiguous(dd)
print*,is_contiguous(dd2)
end subroutine
end
