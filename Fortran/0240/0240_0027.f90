call test()
print *,'pass'
end
subroutine test()
integer, allocatable :: a(:), b(:,:,:)
allocate (a(3), b(1,3,-3:3))
if (size(a).ne.3)print *,'err'
if (size(b).ne.21)print *,'err'
if (lbound(b,3).ne.-3)print *,'err'
end
