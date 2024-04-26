call test()
print *,'pass'
end
subroutine test()
real x
x = atan2d (1., 1.)
if(1.eq.1) x=x
end
