call test()
print *,'pass'
end
subroutine test()
integer, pointer, dimension(:,:) :: c
integer, target, dimension(2,4) :: d
c => d
if (size(c).ne.8)print *,'err'
if (ubound(c,1).ne.2)print *,'err'
if (ubound(c,2).ne.4)print *,'err'
end
