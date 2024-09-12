subroutine s1(k)
integer a(k)
integer,allocatable:: b(:)
a(2)=1
if (a(2)/=1)print *,101
allocate(b(2))
!$omp parallel private(b)
if (allocated(b)) then
else
print *,102
end if
!$omp end parallel
end
call s1(2)
print *,'pass'
end
