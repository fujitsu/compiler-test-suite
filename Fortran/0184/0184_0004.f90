module m1
integer :: a1(1,1)
data ((a1(k1,k2),k1=1,1),k2=1,1)/1/
integer:: a2(1)= [(( k3*k4 , k3=1,1),k4=1,1)] 
integer:: a3(1)
parameter(a3 = [(( k5*k6 , k5=1,1),k6=1,1)] )
contains
subroutine s1
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
dok1=1,1
  a2(k1)=2
end do
if (a2(1)/=2) print *,201
a2=1
dok2=1,1
  a2(k2)=2
end do
if (a2(1)/=2) print *,201
a2=1
dok3=1,1
  a2(k3)=2
end do
if (a2(1)/=2) print *,201
a2=1
dok4=1,1
  a2(k4)=2
end do
if (a2(1)/=2) print *,201
a2=1
dok5=1,1
  a2(k5)=2
end do
if (a2(1)/=2) print *,201
a2=1
dok6=1,1
  a2(k6)=2
end do
if (a2(1)/=2) print *,201
a2=1
end subroutine
end
use m1
call s1
print *,'pass'
end
