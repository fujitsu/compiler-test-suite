module m1
private
public::ss,r
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


   function e1(k1)
use m1
   r=k1
   e1=k1
   end function
function   prc1(r)
prc1=sin(r)
end
use m1
call ss
print *,'pass'
end
