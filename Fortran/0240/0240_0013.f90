call test()
print *,'pass'
end
subroutine test()
real x
x = anint (7.73)
if (int(x).ne.8   )print *,'err'
end
