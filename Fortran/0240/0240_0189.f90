call test()
print *,'pass'
end
subroutine test()
integer,dimension(0:*),parameter :: x=[1,2,3] 
if (x(0).ne.1) print *,'err'
if (x(1).ne.2) print *,'err'
if (x(2).ne.3) print *,'err'
end
