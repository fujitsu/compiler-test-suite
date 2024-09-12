call s(1)
call s1([1])
print *,'pass'
contains
subroutine s(a)
integer,intent(in)::a
!$omp parallel firstprivate(a)
if(a/=1) call err()
!$omp end parallel
end subroutine 
subroutine err()
print *,'err'
end subroutine
subroutine s1(a)
integer,intent(in),dimension(:)::a
!$omp parallel firstprivate(a)
if(any(a/=[1])) call err()
!$omp end parallel
end subroutine 
end
