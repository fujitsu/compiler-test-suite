subroutine s4
integer, allocatable::v(:)
allocate(v(3))
v(1) = 11
v(2) = 12
v(3) = 13
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(2))
v(1) = 21
v(2) = 22
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (size(v) /= 2)  print *,103
if (v(1) /= 21)  print *,102
if (v(2) /= 22)  print *,103
end subroutine s4

call s4
print *,'PASS'
end
