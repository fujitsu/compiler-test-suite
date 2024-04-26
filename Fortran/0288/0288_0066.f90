call test()
print *,'pass'
end
subroutine test()
integer :: a,b,c(2)
equivalence (a,b,c(2))
a=1
if (b.ne.1   )print *,'err'
if (c(2).ne.1   )print *,'err'
end
