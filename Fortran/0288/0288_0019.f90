call test()
print *,'pass'
end
subroutine test()
real r
r = acosd(.5)
if (r < 0.0   )print *,'err'
end
