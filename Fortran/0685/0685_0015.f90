call aaaaa
print *,'pass'
end
subroutine aaaaa
character*1 cha
!$omp parallel private(cha)
cha='a'
if(len(cha).ne.1) print *,"fail"
!$omp endparallel
end
