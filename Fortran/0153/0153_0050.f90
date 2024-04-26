module m1
contains
subroutine s1()
procedure(izz),pointer::pzz
type pz
  integer:: k1
  integer:: k2
  integer:: k3
end type
interface pz
  procedure ixx,pzz
end interface
if ( t (pz(11,12,13),   36)) print *,503
contains
function t(s,k)
type(pz),intent(in)::s
integer,intent(in)::k
logical::t
t=.false.
if (s%k1+s%k2+s%k3 /=k ) t=.true.
end function
end subroutine
function ixx(k1)
if (k1/=1) print *,101
write(1,*) k1
ixx=k1
end function
function izz(k1,k2)
if (k1/=21) print *,112
if (k2/=22) print *,122
write(1,*) k1,k2
izz=k1+k2
end function
end
use m1
call s1()
print *,'pass'
end
