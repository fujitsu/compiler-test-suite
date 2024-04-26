call test()
print *,'pass'
end
subroutine test()
integer :: i,j,k
data i /o'001'/
data j /o"010"/
parameter (k='015'o)
if (i.ne.1) print *,'err'
if (j.ne.8) print *,'err'
if (k.ne.13) print *,'err'
end
