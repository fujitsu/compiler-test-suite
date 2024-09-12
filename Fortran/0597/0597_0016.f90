subroutine s4
integer(kind=2), allocatable::v(:,:)
allocate(v(2,3))
v(1,:) = 11
v(2,:) = 12
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(4,5))
v(1,:) = 21
v(2,:) = 22
v(3,:) = 23
v(4,:) = 24
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (size(v) /= 20)  print *,102
if (any(v(1,:) /= 21))  print *,103
if (any(v(2,:) /= 22))  print *,104
if (any(v(3,:) /= 23))  print *,105
if (any(v(4,:) /= 24))  print *,106
if (kind(v) /= 2) print*,107
end subroutine s4

call s4
print *,'PASS'
end
