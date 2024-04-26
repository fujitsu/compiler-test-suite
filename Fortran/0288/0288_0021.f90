call test()
print *,'pass'
end
subroutine test()
character(len=9)::adjusted
adjusted = adjustr('string   ')
if (adjusted .ne.'   string'   )print *,'err'
end
