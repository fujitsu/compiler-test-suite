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
call omp_set_num_threads(1)
a1=p
a2=p
a3=p
call s1()
call s2()
call s3()
if (any(a1/=a2)) print *,101
if (any(a2/=a3)) print *,102
if (any(a3/=a1)) print *,103
print *,'pass'
end


