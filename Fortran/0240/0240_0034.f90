call test()
print *,'pass'
end
subroutine test()
integer, dimension (3,2) :: i
i=1
if (size(i).ne.6)print *,'err'
end
