INTEGER :: i
i=1
j=2
!$OMP PARALLEL default(firstprivate)
!$OMP SECTIONS
!$OMP parallel
i=100
!$OMP END parallel
!$OMP parallel
j=200
!$OMP END parallel
!$OMP END SECTIONS
!$OMP END PARALLEL
if (i.ne.1) print *,'err var i=',i
if (j.ne.2) print *,'err var j=',j
print *,'pass'

END 

