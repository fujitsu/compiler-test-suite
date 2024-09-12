module m1
     integer,pointer::pp(:,:,:)
contains
   subroutine s1(p1)
     integer,pointer::p1(:,:,:)
     n=1
     do n3=21,25
     do n2=11,14
     do n1=2,3
       p1(n1,n2,n3)= n
       n=n+1
     end do
     end do
     end do
call chk(p1,1)
    end
   subroutine s2(p2)
     integer,pointer::p2(:,:,:)
       p2(:,:,:)= p2(:,:,:)+1
call chk(p2,2)
    end
   subroutine s3(p3)
     integer,pointer::p3(:,:,:)
   p3=p3+1
call chk(p3,3)
    end
 end
subroutine ss
use m1
allocate(pp(2:3,11:14,21:25))
call s1(pp)
call s2(pp)
call s3(pp)
call chk(pp,3)
end
call ss
print *,'pass'
end
subroutine chk(x,n)
integer x(*)
kk=1
do k=n, 2*4*5+(n-1)
 if (x(kk)/=k) print *,n,x(kk),k
 kk=kk+1
end do
end
