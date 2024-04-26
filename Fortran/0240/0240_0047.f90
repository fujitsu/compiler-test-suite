call test()
print *,'pass'
end
subroutine test()
integer :: i,j
data i /b'0001'/
parameter (j=b'0010')
if (i.ne.1) print *,'err'
if (j.ne.2) print *,'err'
end
