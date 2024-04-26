call test()
print *,'pass'
end
subroutine test()
real a
a = atan(.5)
if(1.eq.1) a=a
end
