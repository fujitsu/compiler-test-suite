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
if (call /= 1) print *,9001
if (iii()/=2) print *,6001
if (iii(1)/=1) print *,60011
if (ii2( )/=2) print *,6002
if (ii2(1)/=1) print *,60021
if (g  ()/=2) print *,6003
if (g  (1)/=1) print *,6003
if (iiip()/=2) print *,60012
if (iiip(1)/=1) print *,60013
if (ii2p( )/=2) print *,60021
if (ii2p(1)/=1) print *,60022
if (gp  ()/=2) print *,6003
if (gp  (1)/=1) print *,6003
print *,'sngg705p : pass'
contains
function iii()
iii=2
end
function ii2(k)
integer,intent(in)::k
ii2=k
end
function   sub(ii2,iii)
i=iii()
if (i.ne.2) print *,'err1'
i=ii2(1)
if (i.ne.1) print *,'err2'
sub=1
end
end
