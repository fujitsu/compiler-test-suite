call test()
print *,'pass'
end
subroutine test()
character c
c = achar(65)
if (c.ne.'A'   )print *,'err'
end
