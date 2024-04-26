call test()
print *,'pass'
end
subroutine test()
real :: r
integer :: i
i = digits(r)
if (i.ne.24   )print *,'err'
end
