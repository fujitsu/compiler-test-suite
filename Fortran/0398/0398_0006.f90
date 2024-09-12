module m1
integer,parameter::p(5,2)=reshape([(k,k=1,10)],[5,2])
integer:: a1(5,2),a2(5,2),a3(5,2)
!$omp threadprivate( a1,a2,a3)
contains
subroutine s1(n)
forall (k=1:n)
  a1(k+1,:)=a1(k,:)+1
end forall
end subroutine
subroutine s2(n)
!$omp parallel
!$omp workshare
forall (k=1:n)
  a2(k+1,:)=a2(k,:)+1
end forall
!$omp end workshare
!$omp end parallel
end subroutine
subroutine s3(n)
integer:: b(5,2)
do      k=1,n
  b(k,:)=a3(k,:)+1
end do 
do      k=1,4
  a3(k+1,:)=b(k,:)
end do 
end subroutine
end
use m1
call omp_set_num_threads(1)
a1=p
a2=p
a3=p
n=4
call s1(n)
call s2(n)
call s3(n)
if (any(a1/=a2)) print *,101
if (any(a2/=a3)) print *,102
if (any(a3/=a1)) print *,103
print *,'pass'
end
