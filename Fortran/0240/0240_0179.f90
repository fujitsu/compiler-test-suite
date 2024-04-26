subroutine ex (a, b, c)
real :: a, b, c
intent (in) a
intent (out) b
intent (inout) c
end

call ex(a,b,c)
print *,'pass'
end
