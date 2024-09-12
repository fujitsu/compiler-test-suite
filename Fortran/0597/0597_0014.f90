subroutine s4
real(4), allocatable::v(:)
allocate(v(2))
v(1) = 1.0
v(2) = 2.0
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(3))
v(1) = 3.0
v(2) = 4.0
v(3) = 5.0
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (v(1) /= 3.0)  print *,102
if (v(2) /= 4.0)  print *,103
if (v(3) /= 5.0)  print *,104
if (size(v) /= 3)  print *,105
end subroutine s4

call s4
print *,'PASS'
end
