INTEGER :: i
i=1
i0=1
i1=1
j=2
!$OMP PARALLEL default(firstprivate)
!$OMP SECTIONS
!$OMP parallel private(i)
i=100
!$OMP END parallel
!$OMP parallel firstprivate(i0)
i0=100
!$OMP END parallel
!$OMP parallel do lastprivate(i1)
do ii=1,1
i1=100
end do
!$OMP END parallel do
!$OMP parallel shared(j)
j=200
!$OMP END parallel
!$OMP END SECTIONS
!$OMP END PARALLEL
if (i.ne.1) print *,'err var i=',i
if (i0.ne.1) print *,'err var i0=',i0
if (i1.ne.100) print *,'err var i1=',i1
if (j.ne.2) print *,'err var j=',j
print *,'pass'

END 

