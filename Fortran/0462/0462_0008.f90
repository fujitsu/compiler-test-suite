pointer (ptr,var)
x=1
ptr=loc(x)
call sub
call sub2
print *,'pass'
contains
subroutine sub
if(var/=1) print *,101
end subroutine
subroutine sub2
pointer (ptr,var)
y=2
ptr=loc(y)
if(var/=2) print *,102
end subroutine
end
