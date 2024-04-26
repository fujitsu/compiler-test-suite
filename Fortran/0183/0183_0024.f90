module m1
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(3)=-[2,1,3]
integer::c=0
contains
function f()
integer,pointer::f(:)
f=>v(::2)
c=c+1
end function
end
subroutine s1
use m1
integer,allocatable:: x(:)
allocate (x , mold= f() )
if (any(lbound(a(v))/=1)) print *,101
if (any(ubound(a(v))/=3)) print *,102
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s2
use m1
integer,allocatable:: x(:)
allocate (x , source= f() )
if (any(lbound(a(v))/=1)) print *,201
if (any(ubound(a(v))/=3)) print *,202
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if (any(x/=-[2,3]   )) print *,213
end
use m1
call s1
call s2
if (c/=2) print *,301
print *,'pass'
end


