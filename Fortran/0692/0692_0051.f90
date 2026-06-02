integer, dimension(:,:,:), allocatable :: a
integer, dimension(:,:,:), allocatable :: b
call omp_set_dynamic (.false.)
call omp_set_num_threads (2)
allocate (a(5,3,2))
allocate (b(10,2,3))
a = 10
b = 20
!$omp parallel reduction (+:a, b) private (i, j)
      do i1 = 1, 5
      do i2 = 1, 3
      do i3 = 1, 2
         a(i1,i2,i3) = a(i1,i2,i3) + 1
      end do
      end do
      end do
      do j1 = 1, 10
      do j2 = 1, 2
      do j3 = 1, 3
         b(j1,j2,j3) = b(j1,j2,j3) + 20
      end do
      end do
      end do
!$omp end parallel
if (any(a/=12))print *,'fail'
if (any(b/=60))print *,'fail'
print *,'pass'
end
