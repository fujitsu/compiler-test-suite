integer array(1,2,3,4)
print *,'pass'
call sub(array)
call sub1(array)
contains
subroutine sub(array)
integer array(:,:,:,:)
integer i,j,k,l,m
m=1
!$omp parallel do lastprivate(i),firstprivate(m)
 do i=lbound(array,1),lbound(array,m)
!$omp parallel do lastprivate(j),firstprivate(m)
 do j=lbound(array,1),lbound(array,m)+lbound(array,1)
!$omp parallel do lastprivate(k),firstprivate(m)
 do k=lbound(array,m),ubound(array,3)
!$omp parallel do lastprivate(l),firstprivate(m)
 do l=lbound(array,1),kind(l)
  array(i,j,k,l)=1
 enddo
!$omp endparalleldo
 enddo
!$omp endparalleldo
 enddo
!$omp endparalleldo
 enddo
!$omp endparalleldo
if(any(array/=reshape((/((i,i=1,1),j=1,24)/) ,(/1,2,3,4/)))) print *,"fail"
end subroutine
subroutine sub1(array)
integer array(:,:,:,:)
integer i,j,k,l,m,n
common /aaa/n(4)
m=1
n=(/m,m,m,m/)
!$omp parallel do lastprivate(i),firstprivate(m,/aaa/)
 do i=lbound(array,1),lbound(array,m),n(m)
!$omp parallel do lastprivate(j),firstprivate(m,/aaa/)
 do j=lbound(array,1),lbound(array,m)+lbound(array,1),n(2)
!$omp parallel do lastprivate(k),firstprivate(m,/aaa/)
 do k=lbound(array,m),ubound(array,3),n(3)
!$omp parallel do lastprivate(l),firstprivate(m,/aaa/)
 do l=lbound(array,1),kind(l),n(kind(l))
  array(i,j,k,l)=1
 enddo
!$omp endparalleldo
 enddo
!$omp endparalleldo
 enddo
!$omp endparalleldo
 enddo
!$omp endparalleldo
if(any(array/=reshape((/((i,i=1,1),j=1,24)/) ,(/1,2,3,4/)))) print *,"fail"
end subroutine
end
