use, intrinsic :: iso_c_binding
implicit none
enum,bind(c)
enumerator::a0
enumerator::a1=1,a2=2,a3=3,a4=4,a5=5,a6=6,a7=7
enumerator::a8
enumerator::a9
end enum
interface
function fff(xxx) result(iii)
use, intrinsic :: iso_c_binding
integer(c_int), value :: xxx
end function fff
end interface
if(fff(a0)/=sizeof(a0)) call err(1)
if(a0/=0) call err(2)
if(fff(a1)/=sizeof(a1)) call err(3)
if(a1/=1) call err(4)
if(fff(a2)/=sizeof(a2)) call err(5)
if(a2/=2) call err(6)
if(fff(a3)/=sizeof(a3)) call err(7)
if(a3/=3) call err(8)
if(fff(a4)/=sizeof(a4)) call err(9)
if(a4/=4) call err(10)
if(fff(a5)/=sizeof(a5)) call err(11)
if(a5/=5) call err(12)
if(fff(a6)/=sizeof(a6)) call err(13)
if(a6/=6) call err(14)
if(fff(a7)/=sizeof(a7)) call err(15)
if(a7/=7) call err(16)
if(fff(a8)/=sizeof(a8)) call err(17)
if(a8/=8) call err(18)
if(fff(a9)/=sizeof(a9)) call err(19)
if(a9/=9) call err(20)
print *,'pass'
end
function fff(xxx) result(iii)
use, intrinsic :: iso_c_binding
integer( c_int ), value :: xxx
iii=c_sizeof(xxx)
end function fff
subroutine err(i)
print *,'err',i
end

