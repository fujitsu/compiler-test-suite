integer:: a(3)=[11,12,13],v(3)=[3,1,2]
call s( a(v) )
if (any(a/=[11,12,13])) print *,101
print *,'pass'
contains
subroutine s( x )
integer ,value::x(:)
if (any(x/=[13,11,12])) print *,102
x=1
if (any(x/=1)) print *,103
end subroutine
end
