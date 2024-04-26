subroutine s1(x)
integer,value:: x(2)
if (any(x/=[1,2])) print *,201
x=1
end subroutine
subroutine s2(x) bind(c)
integer:: x(2)
if (any(x/=[1,2])) print *,301
x=1
end subroutine

interface
subroutine s1(x)
integer,value:: x(2)
end subroutine
subroutine s2(x) bind(c)
integer:: x(2)
end subroutine
end interface

integer:: a(2)=[1,2]
call s1(a)
if (any(a/=[1,2])) print *,202
call s2(a)
if (any(a/=1)) print *,202
print *,'pass'
end
