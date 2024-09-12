INTEGER :: i
i=1
j=2
!$OMP PARALLEL default(firstprivate)
!$OMP workshare
!$OMP critical
!$OMP parallel
do ii=1,1
i=100
end do
!$OMP END parallel
!$OMP endcritical
!$OMP parallel
!$OMP parallel
do ii=1,1
j=200
end do
!$OMP END parallel
!$OMP endparallel
!$OMP END workshare
!$OMP END PARALLEL
if (i.ne.1) print *,'err var i=',i
if (j.ne.2) print *,'err var j=',j
print *,'pass'

END 

