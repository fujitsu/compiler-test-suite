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
call iii(k)
if (k    /=2) print *,6001
call iii(1,k)
if (k    /=1) print *,6001
call ii2(k)
if (k    /=2) print *,6001
call ii2(1,k)
if (k    /=1) print *,6001
call g  (k)
if (k    /=2) print *,6001
call g  (1,k)
if (k    /=1) print *,6001
call iiip(k)
if (k    /=2) print *,6001
call iiip(1,k)
if (k    /=1) print *,6001
call ii2p(k)
if (k    /=2) print *,6001
call ii2p(1,k)
if (k    /=1) print *,6001
call gp  (k)
if (k    /=2) print *,6001
call gp  (1,k)
if (k    /=1) print *,6001
print *,'sngg716p : pass'
contains
subroutine iii(n)
n=2
end
subroutine ii2(k,n)
integer,intent(in)::k
n  =k
end
subroutine sub(ii2,iii)
call iii(i)
if (i.ne.2) print *,'err1'
call ii2(1,i)
if (i.ne.1) print *,'err2'
end
end
