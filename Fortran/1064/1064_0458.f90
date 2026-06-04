integer,pointer::ps,pa(:)
allocate(ps,pa(2))
ps=1
pa=[2,3]
!$omp parallel private(ps,pa)
if (ps/=1) print *,101
if (pa(1)/=2) print *,102
if (pa(2)/=3) print *,103
!$omp end parallel
print *,'pass'
end
