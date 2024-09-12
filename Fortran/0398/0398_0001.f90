module m1
integer,parameter::p(5,2)=reshape([(k,k=1,10)],[5,2])
integer:: a1(5,2),a2(5,2),a3(5,2)
contains
subroutine s1(aa)
integer:: aa(5,2)
forall (k=1:4)
  aa(k+1,:)=aa(k,:)+1
  aa(k+1,:)=aa(k,:)+1
end forall
end subroutine
subroutine s2(aa)
integer:: aa(5,2)
!$omp parallel
!$omp workshare
forall (k=1:4)
  aa(k+1,:)=aa(k,:)+1
  aa(k+1,:)=aa(k,:)+1
end forall
!$omp end workshare
!$omp end parallel
end subroutine
subroutine s3(aa)
integer:: aa(5,2)
integer:: b(5,2)
do      k=1,4
  b(k,:)=aa(k,:)+1
end do 
do      k=1,4
  aa(k+1,:)=b(k,:)
end do 
do      k=1,4
  b(k,:)=aa(k,:)+1
end do 
do      k=1,4
  aa(k+1,:)=b(k,:)
end do 
end subroutine
end
use m1
a1=p
a2=p
a3=p
call s1(a1)
call s2(a2)
call s3(a3)
if (any(a1/=a2)) print *,101
if (any(a2/=a3)) print *,102
if (any(a3/=a1)) print *,103
print *,'pass'
end
