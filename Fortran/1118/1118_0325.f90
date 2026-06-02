call aaaaa
print *,'pass'
end
subroutine aaaaa
character*1 cha
!$omp task private(cha)
!$omp parallel private(cha)
cha='a'
if(len(cha).ne.1) print *,"fail"
!$omp endparallel
!$omp endtask
end
