call test()
print *,'pass'
end
subroutine test()
real :: a,b
a=1
b=1
associate( c => sin(b) )
if (1.eq.2) print *, a+c
end associate
end
