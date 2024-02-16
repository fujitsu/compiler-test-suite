module m1
  contains
   subroutine foo(a)
    integer,intent(in),contiguous::a(:)
    if (any(a/=[1,3])) print *,201
   end subroutine
subroutine ss(b)
integer,pointer:: b(:)
call foo(b)
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer:: p(:)
p=> c(::2)
call ss(p     )
if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
