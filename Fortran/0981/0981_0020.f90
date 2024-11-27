module mm
integer i,j,k,n
data i/1/
data k/2/
end  


use mm
integer:: a(1,1)=10
j=3
n=4
!$OMP PARALLEL do default(firstprivate) shared(k) private(n)
do iii=1,1
if (i.ne.1) write(6,*) "NG"
if (j.ne.3) write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end do
!$OMP END PARALLEL do
print *,'pass'
end
