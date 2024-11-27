integer :: i_merge(101,102,103)
integer :: j_merge(101,102,103)
!$omp parallel reduction(+:i_merge) private(j_merge)
!$omp endparallel
end
