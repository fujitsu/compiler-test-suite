call test()
print *,'pass'
end
subroutine test()
a = fraction(3.8)
if (a>100.0_4   )print *,'err'
end
