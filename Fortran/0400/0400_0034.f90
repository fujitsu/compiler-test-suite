module m1
procedure (izz),pointer :: p
contains
subroutine s1(p)
procedure (izz) :: p
interface pz
  procedure ixx,p
end interface
type pz
  integer:: k1
  integer:: k2
  integer:: k3
end type
if ( pz(1)/= 1 ) print *,501
if ( pz(21,22)/=  43) print *,502
if ( t(pz(11,12,13),  36)) print *,503
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
p=>izz
call s1(p)
print *,'pass'
end
