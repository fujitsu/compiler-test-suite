call aaaaa
print *,'pass'
end
subroutine aaaaa
common /cm/a1,a2
!$omp parallel private(/cm/)
!$omp parallel firstprivate(/cm/)
a1=1
a2=2
!$omp endparallel
!$omp endparallel
end
