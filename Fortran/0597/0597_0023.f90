subroutine s4
complex, allocatable::v(:,:)
allocate(v(2,3))
v(1,:) = CMPLX(1.0,2.0)
v(2,:) = CMPLX(2.0,3.0)
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(4,5))
v(1,:) = CMPLX(11.0,21.0)
v(2,:) = CMPLX(12.0,22.0)
v(3,:) = CMPLX(13.0,23.0)
v(4,:) = CMPLX(14.0,24.0)
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (any(v(1,:) /= CMPLX(11.0,21.0)))  print *,102
if (any(v(2,:) /= CMPLX(12.0,22.0)))  print *,103
if (any(v(3,:) /= CMPLX(13.0,23.0)))  print *,104
if (any(v(4,:) /= CMPLX(14.0,24.0)))  print *,105
if (size(v) /= 20)  print *,105, size(v)
end subroutine s4

call s4
print *,'PASS'
end
