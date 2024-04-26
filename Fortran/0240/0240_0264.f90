call test()
print *,'pass'
end
subroutine test()
real i
i=-3.45
i=.0001
i=34.E-4
i=1.4_8
if (abs(i-1.4)>0.001) print *,'err'
end
