subroutine s1()
integer,allocatable :: a(:),b(:)
allocate(a(2))
a=1
!$omp parallel private(a,b)
if (allocated(b))print *,301
if (.not.allocated(a))print *,302
a=2
if (any(a/=2))print *,102
!$omp end parallel
if (any(a/=1))print *,103
end
call s1
call s1
call s1
call s1
print *,'pass'
end


