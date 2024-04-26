call test()
print *,'pass'
end
subroutine test()
real r
r = aint(-7.32,4)
if (int(r).ne.-7   )print *,'err'
end
