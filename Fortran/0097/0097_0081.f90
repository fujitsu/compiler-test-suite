call s1
print *,'pass'
contains
subroutine s1
integer,target:: c(3)=[1,2,3]
call ss2(c(::1))
if (any(c/=[11,12,13])) print *,102,c
end subroutine
subroutine foo(a,l)
integer,contiguous::a(:)
integer::l
if(loc(a).ne.l)print*,"105" , loc(a),l
    if (any(a/=[1,2,3])) print *,101,a
    a=[11,12,13]
end subroutine
subroutine ss2(b)
integer:: b(:)
integer::l
if(loc(b).eq.loc(c))print*,"104",loc(c), loc(b)
l = loc(b)
call foo(b(:),l)
end subroutine
end

