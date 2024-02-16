
type ty
integer::k(3)
end type
type(ty)::obj
obj%k =[1,2,3]
call s1
print *,'pass'
contains
subroutine s1
call ss2(obj%k(::1))
if (any(obj%k.ne.[11,12,13])) print *,102,obj%k
end subroutine
subroutine foo(a)
integer,contiguous::a(:)
if(loc(a).ne.loc(obj%k))print*,"105" , loc(a),loc(obj%k)
    if (any(a/=[1,2,3])) print *,101,a
    a=[11,12,13]
end subroutine
subroutine ss2(b)
integer:: b(:)
if(loc(b).ne.loc(obj%k))print*,"104",loc(obj%k), loc(b)
call foo(b(:))
end subroutine
end

