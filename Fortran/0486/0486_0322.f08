module m1
contains
function   ks1(d1,k,n)
integer::d1(..)
ks1=1
if (rank(d1)/=k) print *,10001,k,n
end function
function   ks2(d2,k,n)
target:: d2(..) 
ks2=1
if (rank(d2)/=k) print *,10001,k,n
end function
function   ks3(d3,k,n)
dimension:: d3 (..)
ks3=1
if (rank(d3)/=k) print *,10001,k,n
end function
function   ks4(d4,k,n)
type(*)::d4(..)
ks4=1
if (rank(d4)/=k) print *,10001,k,n
end function
end
use m1
integer::a1(1)=0,a2=0
real::b1(1)=0,b2=0
if (1/=ks1(a1,1,1)) print *,201
if (1/=ks1(a1(1),0,2)) print *,202
if (1/=ks1(a1(:),1,3)) print *,203
if (1/=ks1(a1+a1,1,4)) print *,204
if (1/=ks1(a1(1)+1,0,5)) print *,205
if (1/=ks1((a1),1,6)) print *,206
if (1/=ks1(a2,0,7)) print *,207

if (1/=ks2(b1,1,1)) print *,221
if (1/=ks2(b1(1),0,2)) print *,222
if (1/=ks2(b1(:),1,3)) print *,223
if (1/=ks2(b1+b1,1,4)) print *,224
if (1/=ks2(b1(1)+1,0,5)) print *,225
if (1/=ks2((b1),1,6)) print *,226
if (1/=ks2(b2,0,7)) print *,227

if (1/=ks4(a1,1,1)) print *,241
if (1/=ks4(a1(1),0,2)) print *,242
if (1/=ks4(a1(:),1,3)) print *,243
if (1/=ks4(a1+a1,1,4)) print *,244
if (1/=ks4(a1(1)+1,0,5)) print *,245
if (1/=ks4((a1),1,6)) print *,246
if (1/=ks4(a2,0,7)) print *,247
print *,'pass'
end
