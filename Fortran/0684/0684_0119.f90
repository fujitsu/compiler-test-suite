subroutine sub1
common /aaa/ ix,i0
common /bbb/ jx,j0
integer a(2)
!$OMP threadprivate(/aaa/)
do i0=1,2
 a(i0)=i0
end do
if (any(a/=(/1,2/)))print *,"fail"
i0=1
do 
 a(i0)=i0
 i0=i0+1
 if (i0>2)exit
end do
if (any(a/=(/1,2/)))print *,"fail"
!$OMP parallel private(/bbb/)
do j0=1,2
 a(j0)=j0
end do
if (any(a/=(/1,2/)))print *,"fail"
j0=1
do 
 a(j0)=j0
 j0=j0+1
 if (j0>2)exit
end do
if (any(a/=(/1,2/)))print *,"fail"
!$OMP end parallel
end
call sub1
print *,'pass'
end
