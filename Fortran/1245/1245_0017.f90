module m1
 type t1
 character(2)::x1='11'
 end type
 type t2
 character(2)::x2='12'
 end type
  interface operator(/=)
    procedure chk1,chk2
  end interface
  type(t1)::x1
  type(t2)::x2
contains
  logical function chk1(d1,d2)
    type(t1),intent(in)::d1,d2
    chk1=.false.
    if (d1%x1/=d2%x1) chk1=.true.
  end
  logical function chk2(d1,d2)
    type(t2),intent(in)::d1,d2
    chk2=.false.
    if (d1%x2/=d2%x2) chk2=.true.
  end
end
subroutine s1
use m1
interface iii
procedure :: iii,ii2
end interface
interface ii2
procedure :: iii,ii2
end interface
interface g   
procedure :: iii,ii2
end interface
procedure (ii2),pointer::ii2p
procedure (iii),pointer::iiip
interface iiip
procedure :: iiip,ii2
end interface
interface ii2p
procedure :: iii,ii2p
end interface
interface gp   
procedure :: iiip,ii2p
end interface
ii2p=>ii2
iiip=>iii
call sub(ii2,iii)
if (iii()/=x2) print *,6001
if (iii(1)/=x1) print *,60011
if (ii2( )/=x2) print *,6002
if (ii2(1)/=x1) print *,60021
if (g  ()/=x2) print *,6003
if (g  (1)/=x1) print *,6003
if (iiip()/=x2) print *,60012
if (iiip(1)/=x1) print *,60013
if (ii2p( )/=x2) print *,60021
if (ii2p(1)/=x1) print *,60022
if (gp  ()/=x2) print *,6003
if (gp  (1)/=x1) print *,6003
contains
function iii() result(r)
class(t2),allocatable::r
allocate(r)
r  =x2
end
class(t1) function ii2(k)
integer,intent(in)::k
allocatable::ii2
allocate(ii2)
if (k/=1) print *,7001
ii2=x1
end
subroutine sub(ii2,iii)
  interface
function iii() result(r)
import
class(t2),allocatable::r
end
class(t1) function ii2(k)
import
integer,intent(in)::k
allocatable::ii2
end
  end interface
type(t2)     ::i1 
type(t1)     ::i2
i1=iii()
if (i1.ne.x2) print *,'err1'
i2=ii2(1)
if (i2.ne.x1) print *,'err2',x1
end
end
call s1
print *,'sngg721p : pass'
end
