integer,dimension(2)::a
!$omp parallel firstprivate(a)
a(1)=1
a(2)=2
print *,a
!$omp endparallel
print *,"pass"
end
