module m1
contains
   subroutine foo(a,m)
    integer,contiguous::a(:)
    integer,contiguous::m(:)
    if (any(a/=[1,3])) print *,105,a
    if (any(m/=[1,2,3,4,5])) print *,109,m
    a=[11,12]
    m=[11,12,13,14,15]
   end subroutine
subroutine ss2(b,f)
integer,pointer:: b(:)
integer,pointer:: f(:)
call foo(b(:),f(:))
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,target:: d(5)=[1,2,3,4,5]
integer,pointer:: p(:)
integer,pointer:: q(:)
integer::number =1
p=> c(::2)
q=> d(::number)
call ss2(p,q)
if (any(c/=[11,2,12])) print *,102,c
if (any(d/=[11,12,13,14,15])) print *,104,d
end
call s1
print *,'pass'
end

