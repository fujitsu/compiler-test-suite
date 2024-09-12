call s1([1,2])
print *,'pass'
contains
subroutine s1(k)
integer,contiguous::k(:)
if (.not.is_contiguous(k)) print *,101
!$omp parallel private(k)
if (.not.is_contiguous(k)) print *,102
!$omp end parallel
end subroutine
end
