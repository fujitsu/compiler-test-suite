module mm
integer i,j
contains
subroutine sub(a)
integer a(i:,j:)
integer,allocatable:: arr(:,:)
allocate(arr(i:ubound(a,1),j:ubound(a,2)))
arr=a
!$OMP PARALLEL default(private) shared(arr)
a=arr 
if(a(2,3)/=10)print *,"fail"
!$OMP END PARALLEL
end subroutine
end  
use mm
integer:: a(1,1)=10
i=2;j=3
call sub(a)
print *,'pass'
end
