module m1
contains
subroutine chkr16(b,a1,a2,n)
parameter(k=16)
real(k)::b,a1,a2,c
select case (n)
case (1)
 c=(a1+a2)
 if (b/=c)print *,101,n,b,c
case (2)
 c=(a1-a2)
 if (b/=c)print *,102,n,b,c
case (3)
 c=(a1*a2)
 if (b/=c)print *,103,n,b,c
case (4)
 c=(a1/a2)
 if (b/=c)print *,104,n,b,c
case (5)
 c=(a1**a2)
 if (b/=c)print *,105,n,b,c
end select
end subroutine
end
subroutine s1
use m1
parameter(k=16)
real(k),parameter::a1=2.,a2=3.
real(k),parameter::b1=a1+a2
real(k),parameter::b2=a1-a2
real(k),parameter::b3=a1*a2
real(k),parameter::b4=a1/a2
real(k),parameter::b5=a1**a2
call chkr16(b1,a1,a2,1)
call chkr16(b2,a1,a2,2)
call chkr16(b3,a1,a2,3)
call chkr16(b4,a1,a2,4)
call chkr16(b5,a1,a2,5)
end
call s1
print *,'pass'
end
