INTEGER :: i
i=1
j=2
k=3
kdo=3
!$OMP PARALLEL default(firstprivate)
!$OMP SECTIONS
!$OMP parallel
i=100
!$OMP END parallel
!$OMP parallel do
do ii=1,1
k=300
end do
!$OMP END parallel do
!$OMP parallel 
iii=1
!$OMP do
do iii=1,1
kdo=300
end do
!$OMP END do
!$OMP END parallel
!$OMP critical(k1)
!$OMP critical(k2)
j=200
!$OMP END critical(k2)
!$OMP END critical(k1)
!$OMP END SECTIONS
!$OMP END PARALLEL
if (i.ne.1) print *,'err var i=',i
if (j.ne.2) print *,'err var j=',j
if (k.ne.3) print *,'err var k=',k
if (kdo.ne.3) print *,'err var kdo=',kdo
print *,'pass'

END 

