subroutine s1
integer,pointer::p1
integer,allocatable::a1
allocate( a1 )
a1=2

!$omp parallel reduction(+:a1)
a1=a1+10
!$omp end parallel
if (a1/=22) print *,301
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
