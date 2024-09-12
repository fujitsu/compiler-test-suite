call sub([1,2,3])
print *,'pass'
contains
subroutine sub(a)
integer,intent(in):: a(:)
integer j(3)
do concurrent(i=1:3)
!$omp parallel
 j(i)=a(i)
!$omp end  parallel
end do
if(any(j/=[1,2,3])) print *,'err'
end subroutine 
end
