subroutine s1
integer,allocatable::a(:)
allocate(a(2))
!$omp parallel firstprivate(a)
write(8,*) lbound(a)
!$omp parallel firstprivate(a)
write(8,*) lbound(a)
!$omp task firstprivate(a)
write(8,*) lbound(a)
!$omp end task
write(8,*) lbound(a)
!$omp end parallel
write(8,*) lbound(a)
!$omp end parallel
write(8,*) lbound(a)
end
call s1
write(6,*) 'pass'
end
