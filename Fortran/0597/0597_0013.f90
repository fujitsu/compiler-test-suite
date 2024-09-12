subroutine s4
complex, allocatable::v(:)
allocate(v(2))
v(1) = CMPLX(1.0,2.0)
v(2) = CMPLX(2.0,3.0)
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(3))
v(1) = CMPLX(11.0,21.0)
v(2) = CMPLX(12.0,22.0)
v(3) = CMPLX(13.0,23.0)
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (v(1) /= CMPLX(11.0,21.0))  print *,102, v(1)
if (v(2) /= CMPLX(12.0,22.0))  print *,103, v(2)
if (v(3) /= CMPLX(13.0,23.0))  print *,104, v(3)
if (size(v) /= 3)  print *,105, size(v)
end subroutine s4

call s4
print *,'PASS'
end
