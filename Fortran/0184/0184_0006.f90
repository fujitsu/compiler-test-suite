module m1
integer :: a1(1,1)
data ((a1(k1,k2),k1=1,1),k2=1,1)/1/
integer:: a2(1)= [(( k3*k4 , k3=1,1),k4=1,1)] 
integer:: a3(1)
parameter(a3 = [(( k5*k6 , k5=1,1),k6=1,1)] )
contains
subroutine s1
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
do k1=1,1; end do
do k2=1,1; end do
do k3=1,1; end do
do k4=1,1; end do
do k5=1,1; end do
do k6=1,1; end do
write(1,'("k1",z16.16)')loc(k1)
write(1,'("k2",z16.16)')loc(k2)
write(1,'("k3",z16.16)')loc(k3)
write(1,'("k4",z16.16)')loc(k4)
write(1,'("k5",z16.16)')loc(k5)
write(1,'("k6",z16.16)')loc(k6)
end subroutine
end
use m1
!$omp parallel
call s1
!$omp end parallel
print *,'pass'
end
