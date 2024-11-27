module mm
integer i,j,k
contains
subroutine sub(a,k)
integer,optional:: a(i:,j:)
!$OMP PARALLEL default(firstprivate) shared(k,a)
select case (present(a))
 case (.true.)
  if (k/=1)write(6,*) "NG"
  if(a(2,3)/=10)write(6,*) "NG"
 case default
  if (k/=0)write(6,*) "NG"
end select
!$OMP END PARALLEL
end subroutine
end  


use mm
integer:: a(1,1)=10
i=2;j=3
!$OMP PARALLEL do default(firstprivate) shared(k) private(i)
do iii=1,1
call sub(k=0)
call sub(a,1)
i=200
j=300
end do
!$OMP END PARALLEL do
print *,'pass'
end
