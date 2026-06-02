call omp_set_num_threads(1)
call sss1
call sss2
print *,'pass'
end
subroutine sss1
integer,pointer,save::a
namelist /nnn/a
!$omp threadprivate(a)
allocate(a)
a=1
print nnn
!$omp parallel 
print nnn
!$omp end parallel
end
subroutine sss2
integer,allocatable,save::a
namelist /nnn/a
!$omp threadprivate(a)
allocate(a)
a=1
print nnn
!$omp task
print nnn
!$omp end task
end
