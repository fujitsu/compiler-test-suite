module mm
integer i,j
contains
subroutine sub(a,k)
integer,optional:: a(i:,j:)
!$OMP PARALLEL default(firstprivate) shared(k) shared(a)
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
call sub(k=0)
call sub(a,1)
print *,'pass'
end
