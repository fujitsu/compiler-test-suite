real, dimension(:), allocatable :: a
real, dimension(:), allocatable :: b
integer,parameter::n=16
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
do k=1,5
if(a(k)/=(real(10)+real(n))) print *,'err1'
enddo
do l=1,10
if(b(l)/=(real(20)+real(n*20))) print *,'err2'
enddo
print *,'pass'
end
