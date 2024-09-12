module m1
private
public::ss,r,gnr
interface
   function   e1(k1)
   end function
end interface
  procedure(sin):: prc1
integer::r
interface gnr
procedure e1,prc1,ss1,ss2
end interface
contains
subroutine ss
call=gnr(1)
if (r/=1)print *,101
if (abs(call-1)>0.0001)print *,111
call=gnr(1,2)
if (r/=3)print *,102
if (abs(call-3)>0.0001)print *,112
call=gnr(1,2,3)
if (r/=6)print *,103
if (abs(call-6)>0.0001)print *,113
end subroutine
function ss1(k1,k2)
r=k1+k2
ss1=r
return
entry      ss2(k1,k2,k3)
r=k1+k2+k3
ss1=r
end function
end
module m2
use m1
interface
   function   e2(k1,k2,k3,k4)
   end function
end interface
interface gnr
procedure e2,ss11,ss12
end interface
contains
subroutine sss
call=gnr(1)
if (r/=1)print *,2101
if (abs(call-1)>0.0001)print *,2111
call=gnr(1,2)
if (r/=3)print *,2102
if (abs(call-3)>0.0001)print *,2112
call=gnr(1,2,3)
if (r/=6)print *,2103
if (abs(call-6)>0.0001)print *,2113
call=gnr(1,2,3,4)
if (r/=10)print *,2104
if (abs(call-10)>0.0001)print *,2114
call=gnr(1,2,3,4,5)
if (r/=15)print *,2105
if (abs(call-15)>0.0001)print *,2115
call=gnr(1,2,3,4,5,6)
if (r/=21)print *,2106
if (abs(call-21)>0.0001)print *,2116
end subroutine
function ss11(k1,k2,k3,k4,k5)
r=k1+k2+k3+k4+k5
ss11=r
return
entry      ss12(k1,k2,k3,k4,k5,k6)
r=k1+k2+k3+k4+k5+k6
ss11=r
end function
end
   function e1(k1)
use m1
   r=k1
   e1=k1
   end function
   function e2(k1,k2,k3,k4)
use m1
   r=k1
   e2=k1+k2+k3+k4
   end function
function   prc1(r)
prc1=sin(r)
end
use m1
call ss
print *,'pass'
end
