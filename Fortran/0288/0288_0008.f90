call test()
print *,'pass'
end
subroutine test()
integer ,parameter :: mykind=1
i=34
i=-256
i=354_4
i=+78_mykind 
if (i.ne.78) print *,'err'
end
