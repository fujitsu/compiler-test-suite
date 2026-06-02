volatile :: i,j,k
integer :: i
i=1
j=2

call s1

if(i /= 1) print *,'fail'
if(j /= 2) print *,'fail'
if(k /= 3) print *,'fail'

print *,'pass'

contains
subroutine s1
 k=3
end subroutine
end
