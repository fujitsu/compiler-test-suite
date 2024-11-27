module mm
integer i,j,k,n
data i/1/
data k/2/
end  


use mm
integer:: a(1,1)=10
a=a
j=3
n=4
!$OMP PARALLEL default(firstprivate)
!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) private(i1)
!$OMP PARALLEL default(firstprivate) firstprivate(i2)
!$OMP PARALLEL default(firstprivate) shared(i3)
!$OMP PARALLEL default(firstprivate) reduction(+:i4)
!$OMP do lastprivate(i5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL


!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) reduction(+:j4)
!$OMP PARALLEL default(firstprivate) private(j1)
!$OMP PARALLEL default(firstprivate) firstprivate(j2)
!$OMP PARALLEL default(firstprivate) shared(j3)
!$OMP do lastprivate(j5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL

!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) shared(k3)
!$OMP PARALLEL default(firstprivate) private(k1)
!$OMP PARALLEL default(firstprivate) firstprivate(k2)
!$OMP PARALLEL default(firstprivate) reduction(+:k4)
!$OMP do lastprivate(k5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL


!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) firstprivate(a2)
!$OMP PARALLEL default(firstprivate) private(a1)
!$OMP PARALLEL default(firstprivate) shared(a3)
!$OMP PARALLEL default(firstprivate) reduction(+:a4)
!$OMP do lastprivate(a5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL

!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) private(b1)
!$OMP PARALLEL default(firstprivate) firstprivate(b2)
!$OMP PARALLEL default(firstprivate) shared(b3)
!$OMP PARALLEL default(firstprivate) reduction(+:b4)
!$OMP do lastprivate(b5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL


!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) reduction(+:c4)
!$OMP PARALLEL default(firstprivate) firstprivate(c2)
!$OMP PARALLEL default(firstprivate) shared(c3)
!$OMP PARALLEL default(firstprivate) private(c1)
!$OMP do lastprivate(c5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL




!$OMP END PARALLEL

print *,"pass"
end
