call test()
print *,'pass'
end
subroutine test()
integer i
i = ceiling (-4.7)
if (i.ne.-4   )print *,'err'
i = ceiling (4.7)
if (i.ne.5   )print *,'err'
end
