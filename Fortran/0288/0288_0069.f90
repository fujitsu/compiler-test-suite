call test()
print *,'pass'
end
subroutine test()
real :: a
a = exp(2.0)
if (a>88.722E0   )print *,'err'
end
