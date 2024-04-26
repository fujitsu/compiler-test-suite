call test()
print *,'pass'
end
subroutine test()
integer ,parameter :: mykind=1
i=34
if (i.ne.34) print *,'err'
i=-256
if (i.ne.-256) print *,'err'
i=345_4
if (i.ne.345_4) print *,'err'
i=+78_mykind
if (i.ne.78) print *,'err'
end
