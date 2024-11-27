real, dimension(:), allocatable :: a
real, dimension(:), allocatable :: b
integer,parameter::n=15
call omp_set_dynamic (.false.)
call omp_set_num_threads (n)
allocate (a(5))
allocate (b(10))
a = 10
b = 20
!$omp parallel reduction (+:a, b) private (i, j)
      do i = 1, 5
         a(i) = a(i) + 1
      end do
      do j = 1, 10
         b(j) = b(j) + 20
      end do
!$omp end parallel
if(any(a/=(/((real(10)+real(n)),k=1,5)/))) print *,'err1'
if(any(b/=(/((real(20)+real(n*20)),l=1,10)/))) print *,'err2'
print *,'pass'
end
