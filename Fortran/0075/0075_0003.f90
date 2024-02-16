module m1
  contains
   subroutine foo(a)
    integer,contiguous::a(:,:,:)
    a(1,1,:)=[11,12,13]
   end subroutine
subroutine ss1(b)
integer,contiguous:: b(:,:,:)
call foo(b)
end subroutine
subroutine ss2(b)
integer,contiguous:: b(:,:,:)
call foo(b(:,:,:))
end subroutine
end
subroutine s1
use m1
integer:: c(1,1,3)
c(1,1,:)=[1,2,3]
call ss1(c(:,:,:))
if (any(c(1,1,:)/=[11,12,13])) print *,101
c(1,1,:)=[1,2,3]
call ss2(c(:,:,:))
if (any(c(1,1,:)/=[11,12,13])) print *,102
end
call s1
print *,'OK'
end 
