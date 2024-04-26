subroutine s1(n)
character(n):: c
type t
character(3,1),pointer    ::c1
end type
type(t)::ttt
c='1'
k=0
allocate(ttt%c1,source=c,stat=k)
if (k==0) print *,302
if(len(ttt%c1)/=3) print *,'err2',len(ttt%c1)
end
call s1(1)
print *,'pass'
end
