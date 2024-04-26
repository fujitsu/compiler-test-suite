call test()
print *,'pass'
end
subroutine test()
integer i
i = len('abc\n')
if (i.ne.4) print *,'err'
end
