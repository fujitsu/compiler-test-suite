module m1
integer,parameter::p(5,2)=reshape([(kk,kk=1,10)],[5,2])
integer:: a1(5,2),a2(5,2),a3(5,2)
!$omp threadprivate( a1,a2,a3)
contains
subroutine s1
forall (k=1:4)
  a1(k+1,:)=a1(k,:)+1
end forall
end subroutine
subroutine s2
!$omp parallel
forall (k=1:4)
  a2(k+1,:)=a2(k,:)+1
end forall
!$omp end parallel
end subroutine
subroutine s3
integer:: b(5,2)
do      k=1,4
  b(k,:)=a3(k,:)+1
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
!$omp end parallel
!$omp parallel
call s1()
!$omp end parallel
call s2()
!$omp parallel
call s3()
!$omp end parallel
!$omp parallel
if (any(a1/=a2)) print *,101,a1,a2
if (any(a2/=a3)) print *,102,a2,a3
if (any(a3/=a1)) print *,103,a3,a1
!$omp end parallel
print *,'pass'
end


