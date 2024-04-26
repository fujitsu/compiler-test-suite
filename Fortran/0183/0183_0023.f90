subroutine s1
integer:: a(-3:-1)=[1,2,3]
integer:: v(3)=-[2,1,3]
integer,allocatable:: x(:)
allocate (x , mold= a(v) )
if (any(lbound(a(v))/=1)) print *,101
if (any(ubound(a(v))/=3)) print *,102
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=3)) print *,112
end
subroutine s2
integer:: a(-3:-1)=[11,12,13]
integer:: v(3)=-[2,1,3]
integer,allocatable:: x(:)
allocate (x , source= a(v) )
if (any(lbound(a(v))/=1)) print *,201
if (any(ubound(a(v))/=3)) print *,202
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=3)) print *,212
if (any(x/=[12,13,11]   )) print *,213
end
call s1
call s2
print *,'pass'
end


