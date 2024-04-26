call test()
print *,'pass'
end
subroutine test()
real r
r = asinh(0.1)
if(1.eq.1) r=r
end
