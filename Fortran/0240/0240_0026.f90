call test()
print *,'pass'
end
subroutine test()
real r
r = atanh(0.76)
if(1.eq.1) r=r
end
