call test()
print *,'pass'
end
subroutine test()
integer :: i,j,k
data i /z'01'/
data j /z"10"/
parameter (k='1a'x)
if (i.ne.1) print *,'err'
if (j.ne.16) print *,'err'
if (k.ne.26) print *,'err'
end
