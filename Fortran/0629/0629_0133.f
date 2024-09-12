 integer a(10)

 a = 0
!$omp parallel
!$omp do
   do i=1, 10
     call sub(a, i)
   end do
!$omp end do
!$omp end parallel

 print *, a

 end

 subroutine sub(a,n)
 integer a(10)

 do j=1, 100
   a(n) = a(n)+n
 end do
 end
