module m1
  contains
   subroutine foo(a1,a2,a3)
    integer,contiguous::a1(:,:,:)
    integer,contiguous::a2(:,:,:)
    integer,contiguous::a3(:,:,:)
    if (any(a1(:,1,1)/=[1,3])) print *,201
    if (any(a2(:,1,1)/=[1,3])) print *,202
    if (any(a3(:,1,1)/=[1,3])) print *,203
   end subroutine
subroutine ss1(b1,b2,b3)
integer,pointer:: b1(:,:,:)
integer,pointer:: b2(:,:,:)
integer,pointer:: b3(:,:,:)
call foo(b1,b2,b3)
end subroutine
subroutine ss2(b1,b2,b3)
integer,pointer:: b1(:,:,:)
integer,pointer:: b2(:,:,:)
integer,pointer:: b3(:,:,:)
call foo(b1(:,:,:),b2(:,:,:),b3(:,:,:))
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer:: p(:,:,:)
p(1:2,1:1,1:1)=> c(::2)
call ss1(p,p,p     )
if (any(c/=[1,2,3])) print *,101
c=[1,2,3]
call ss2(p,p,p     )
if (any(c/=[1,2,3])) print *,102
end
call s1
print *,'OK'
end 
