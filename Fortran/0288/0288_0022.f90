call test()
print *,'pass'
end
subroutine test()
real r
r = aimag((-4.0,5.0))
if (int(r).ne.5   )print *,'err'
end
