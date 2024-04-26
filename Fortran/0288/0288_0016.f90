call test()
print *,'pass'
end
subroutine test()
real x
x = abs(-4.0)
if (int(x).ne.4)print *,'err'
end
