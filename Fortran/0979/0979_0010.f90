volatile :: i,j,k
integer :: i
i=1
j=2

call s1

if(i /= 1) write(6,*) "NG"
if(j /= 2) write(6,*) "NG"
if(k /= 3) write(6,*) "NG"

print *,'pass'

contains
subroutine s1
 k=3
end subroutine
end
