module m1
  contains
   subroutine foo(a1,a2,a3)
    integer,contiguous::a1(:),a2(:),a3(:)
    if (any(a1/=[1,3])) print *,201
    if (any(a2/=[1,3])) print *,202
    if (any(a3/=[1,3])) print *,203
   end subroutine
subroutine ss(b1,b2,b3)
integer,intent(in),pointer:: b1(:),b2(:),b3(:)
call foo(b1,b2,b3)
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer:: p(:)
p=> c(::2)
call ss(p,p,p     )
if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
