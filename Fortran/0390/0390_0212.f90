module m1
  integer,contiguous::p1(:,:)
  pointer           ::p1
  integer,target    ::t1(4,3)=reshape([(i,i=1,12)],[4,3])
end
subroutine s1(n1,n3,n4)
use m1
p1=>t1
do k1=n1,n4
 do k2=n1,n3
  nn=t1(k1,k2)
  if (p1(k1,k2)/=nn  ) print *,101
  end do
end do
!$omp parallel private(p1,nn)
p1=>t1
do k1=n1,n4
 do k2=n1,n3
  nn=t1(k1,k2)
  if (p1(k1,k2)/=nn) print *,102
  end do
end do
!$omp end parallel
end
call s1(1,3,4)
print *,'pass'
end

