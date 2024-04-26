subroutine s1
complex,parameter:: c1(2:3)=0
integer,parameter :: k1(*)= lbound(c1% im)
integer::k5(1)
 k5(:)=lbound(c1% im)
if (any(k1/=1)) print *,101
if (any(k5/=1)) print *,201,lbound(c1% im)
end
call s1
print *,'pass'
end
