call aaaaa
print *,'pass'
end
subroutine aaaaa
common /cm/a1,a2
!$omp task private(/cm/)
!$omp parallel private(/cm/)
!$omp parallel firstprivate(/cm/)
a1=1
a2=2
!$omp endparallel
a1=10
a2=20
!$omp endparallel
!$omp endtask
end
