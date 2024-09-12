subroutine s4
real(4), allocatable::v(:,:)
allocate(v(2,3))
v(1,:) = 1.0
v(2,:) = 2.0
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(4,5))
v(1,:) = 3.0
v(2,:) = 4.0
v(3,:) = 5.0
v(4,:) = 6.0
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (any(v(1,:) /= 3.0))  print *,102
if (any(v(2,:) /= 4.0))  print *,103
if (any(v(3,:) /= 5.0))  print *,104
if (any(v(4,:) /= 6.0))  print *,105
if (size(v) /= 20)  print *,106
end subroutine s4

call s4
print *,'PASS'
end
