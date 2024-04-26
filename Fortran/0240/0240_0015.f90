call test()
print *,'pass'
end
subroutine test()
real r
r = asin(.5)
if(1.eq.1) r=r
end
