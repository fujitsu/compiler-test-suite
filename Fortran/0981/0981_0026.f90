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
print *,"pass"
a=a
j=3
n=4
iii = 1
!$OMP PARALLEL default(shared)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL

!$OMP PARALLEL default(shared) firstprivate(iii)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL


!$OMP PARALLEL default(private) firstprivate(iii)
do iii=iii,1
if (1.eq.2) then
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
endif
end do
!$OMP END PARALLEL

!$OMP PARALLEL default(firstprivate) firstprivate(iii)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL

!$OMP PARALLEL default(shared) private(iii)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL


!$OMP PARALLEL default(private) private(iii)
do iii=iii,1
if (1.eq.2) then
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
endif
end do
!$OMP END PARALLEL

!$OMP PARALLEL default(firstprivate) private(iii)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL

!$OMP PARALLEL default(shared) shared(iii)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL


!$OMP PARALLEL default(private) shared(iii)
do iii=iii,1
if (1.eq.2) then
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
endif
end do
!$OMP END PARALLEL

!$OMP PARALLEL default(firstprivate) shared(iii)
do iii=iii,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL



end
