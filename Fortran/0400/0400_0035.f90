module m1
type pz
  integer:: k1
  integer:: k2
  integer:: k3
end type
contains
subroutine s1()
procedure (izz) :: ip
interface pz
  procedure ixx,ip,kxx
end interface
interface operator(/=)
  procedure t
end interface
if ( pz(1)/= 1 ) print *,501
if ( pz(21,22)/=  43) print *,502
if ( pz(11,12,13)/= -14) print *,503
end subroutine
function kxx(k1,k2,k3)
if (k1/=11) print *,401
if (k2/=12) print *,402
if (k3/=13) print *,403
kxx=k1-k2-k3
end function
function ixx(k1)
if (k1/=1) print *,101
ixx=k1
end function
function izz(k1,k2)
 print *,112
end function
function t(s,k)
type(pz),intent(in)::s
integer,intent(in)::k
logical::t
print *,101
t=.false.
if (s%k1+s%k2+s%k3 /=k ) t=.true.
end function
end
use m1
call s1()
print *,'pass'
end
function ip(k1,k2)
if (k1/=21) print *,112
if (k2/=22) print *,122
write(32,*) k1,k2
ip=k1+k2
end function
