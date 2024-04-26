call test()
print *,'pass'
end
subroutine test()
real a
a = atan(.5)
if(1.eq.2) a=a
end
