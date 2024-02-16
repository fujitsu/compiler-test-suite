module m1
  contains
   subroutine foo(a1,a2,a3)
    integer,contiguous::a1(:,:,:)
    integer,contiguous::a2(:,:,:)
    integer,contiguous::a3(:,:,:)
if (any(a1(1,1,:)/=[1,2,3])) print *,111
if (any(a2(1,1,:)/=[1,2,3])) print *,111
if (any(a3(1,1,:)/=[1,2,3])) print *,111
   end subroutine
subroutine ss1(b1,b2,b3)
integer,contiguous:: b1(:,:,:)
integer,contiguous:: b2(:,:,:)
integer,contiguous:: b3(:,:,:)
call foo(b1,b2,b3)
end subroutine
subroutine ss2(b1,b2,b3)
integer,contiguous:: b1(:,:,:)
integer,contiguous:: b2(:,:,:)
integer,contiguous:: b3(:,:,:)
call foo(b1(:,:,:), b2(:,:,:) ,b3(:,:,:))
end subroutine
end
subroutine s1
use m1
integer:: c(1,1,3)
c(1,1,:)=[1,2,3]
call ss1(c(:,:,:),c,c)
if (any(c(1,1,:)/=[1,2,3])) print *,101
c(1,1,:)=[1,2,3]
call ss2(c(:,:,:),c,c)
if (any(c(1,1,:)/=[1,2,3])) print *,102
end
call s1
print *,'OK'
end 
