module m1
integer,parameter::p(5,2)=reshape([(kk,kk=1,10)],[5,2])
integer:: a1(5,2),a2(5,2),a3(5,2)
integer:: c1(5,2),c2(5,2),c3(5,2)
!$omp threadprivate( a1,a2,a3)
!$omp threadprivate( c1,c2,c3)
contains
subroutine s1(n)
forall (k=1:n,k/=0)
  c1(k+1,:)=a1(k,:)+1
  a1(k+1,:)=c1(k,:)+1
end forall
end subroutine
subroutine s2(n)
!$omp parallel
forall (k=1:n,k/=0)
  c2(k+1,:)=a2(k,:)+1
  a2(k+1,:)=c2(k,:)+1
end forall
!$omp end parallel
end subroutine
subroutine s3(n)
integer:: b(5,2)
do      k=1,n
  b(k,:)=a3(k,:)+1
end do 
do      k=1,4
  c3(k+1,:)=b(k,:)
end do 
do      k=1,4
  b(k,:)=c3(k,:)+1
end do 
do      k=1,4
  a3(k+1,:)=b(k,:)
end do 
end subroutine
end
use m1
integer::omp_get_thread_num
!$omp parallel
a1=p+omp_get_thread_num()
a2=p+omp_get_thread_num()
a3=p+omp_get_thread_num()
c1=0
c2=0
c3=0
!$omp end parallel
n=4
!$omp parallel
call s1(n)
!$omp end parallel
call s2(n)
!$omp parallel
call s3(n)
!$omp end parallel
!$omp parallel
if (any(a1/=a2)) print *,101
if (any(a2/=a3)) print *,102
if (any(a3/=a1)) print *,103
if (any(c1/=c2)) print *,101
if (any(c2/=c3)) print *,102
if (any(c3/=c1)) print *,103
!$omp end parallel
print *,'pass'
end


