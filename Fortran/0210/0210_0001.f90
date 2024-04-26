call test1()
call test2()
print *,'pass'
end
subroutine test1()
parameter(k=2)
real(k), dimension (2,3) :: a, b
a = reshape((/1,2,3,4,5,6/), (/2,3/)) 

b = eoshift(a,1) 
if (b(1,1).ne.2   )print *,'err'
if (b(2,1).ne.0   )print *,'err'
if (b(1,2).ne.4   )print *,'err'
if (b(2,2).ne.0   )print *,'err'
if (b(1,3).ne.6   )print *,'err'
if (b(2,3).ne.0   )print *,'err'
end
subroutine test2()
parameter(k=8)
real(k), dimension (2,3) :: a, b
a = reshape((/1,2,3,4,5,6/), (/2,3/)) 

b = eoshift(a,1) 
if (b(1,1).ne.2   )print *,'err'
if (b(2,1).ne.0   )print *,'err'
if (b(1,2).ne.4   )print *,'err'
if (b(2,2).ne.0   )print *,'err'
if (b(1,3).ne.6   )print *,'err'
if (b(2,3).ne.0   )print *,'err'
end
