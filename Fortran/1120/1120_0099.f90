subroutine test01()
integer,allocatable::i
allocate(i)
i=1
!$omp single
!$omp parallel firstprivate(i)
if (1.eq.2) print *,i
deallocate(i)
allocate(i)
if (1.eq.2) print *,i
!$omp end parallel
!$omp endsingle
end

subroutine test02()
integer,allocatable::i
allocate(i)
i=1
!$omp single
!$omp task     firstprivate(i)
if (1.eq.2) print *,i
deallocate(i)
allocate(i)
if (1.eq.2) print *,i
!$omp end task
!$omp endsingle
end

!$omp parallel
call test01()
call test02()
!$omp endparallel
print *,"pass"
end
