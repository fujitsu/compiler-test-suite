call test()
print *,'pass'
end
subroutine test()
r = erf(.5)
if (r>1.1   )print *,'err'
end
