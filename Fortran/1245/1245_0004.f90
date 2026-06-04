module m1
 complex,parameter::x1=(11,12)
 complex,parameter::x2=(1,2)
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
call=sub(ii2,iii)
if (call/=1) print *,1001
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
complex function iii()
iii=x2
end
complex function ii2(k)
integer,intent(in)::k
ii2=cmplx(k+10,12)
end
function   sub(ii2,iii)
complex::iii,ii2,i
i=iii()
if (i.ne.x2) print *,'err1'
i=ii2(1)
if (i.ne.x1) print *,'err2',x1
sub=1
end
end
call s1
print *,'sngg706p : pass'
end
