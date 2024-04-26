call test()
print *,'pass'
end
subroutine test()
character(len=9)::adjusted
adjusted = adjustl('   string')
if (adjusted .ne. 'string    '   )print *,'err'
end
