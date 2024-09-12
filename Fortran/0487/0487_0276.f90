module m1
contains
subroutine test(a,b)
real(kind=8),dimension(:,:), pointer,contiguous :: a,b
do j=1,30
    do i=1,1000
        a(i,j) = a(i,j) + b(i,j)
    enddo
enddo
end subroutine test
end

use m1
real(kind=8),dimension(:,:), contiguous,pointer :: a,b
allocate(a(1000,30), b(1000,30))
a=1
b=1
call       test(a,b)
if(abs(sum(a)-60000.)>0.1) print *,101
if(abs(sum(b)-30000.)>0.1) print *,102
print *,'pass'
end
