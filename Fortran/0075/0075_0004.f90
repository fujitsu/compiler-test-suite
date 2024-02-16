module m1
  contains
   subroutine foo(a)
    integer,contiguous::a(:)
    a=[11,12]
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
if (any(c/=[11,2,12])) print *,101
end
call s1
print *,'OK'
end 
