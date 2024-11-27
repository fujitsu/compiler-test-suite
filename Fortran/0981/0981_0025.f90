module mm
integer i,j,k,n
data i/1/
data k/2/
type ty1
 integer,pointer :: ip
end type
type(ty1) :: str
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
!$OMP PARALLEL default(firstprivate) reduction(+:i4)
!$OMP PARALLEL default(firstprivate) private(i1)
!$OMP PARALLEL default(firstprivate) firstprivate(i2)
!$OMP PARALLEL default(firstprivate) shared(i3) 
!$OMP do lastprivate(i5)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
if (1.eq.2) str%ip=str%ip
end do
!$OMP END do
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL
!$OMP END PARALLEL

!$OMP PARALLEL default(firstprivate) shared(k) private(n)
!$OMP PARALLEL default(firstprivate) shared(i3)
!$OMP PARALLEL default(firstprivate) private(i1)
!$OMP PARALLEL default(firstprivate) firstprivate(i2)
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
!$OMP PARALLEL default(firstprivate) firstprivate(i2)
!$OMP PARALLEL default(firstprivate) private(i1)
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
!$OMP PARALLEL default(firstprivate) reduction(+:i4)
!$OMP PARALLEL default(firstprivate) firstprivate(i2)
!$OMP PARALLEL default(firstprivate) shared(i3)
!$OMP PARALLEL default(firstprivate) private(i1)
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




!$OMP END PARALLEL

print *,"pass"
end
