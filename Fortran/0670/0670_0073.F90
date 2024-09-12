#define cknd char_kind 
#define leng char_length
#define ikind integer_kind

module m1
integer,parameter::cknd=1,leng=3,ikind=8
end
use m1
implicit character(kind=cknd,len=leng)(c),integer(ikind)(i)
integer(ikind)::jvar
character(kind=cknd,len=leng)::cvar
if (kind(jvar)/=8)print *,'error-1'
if (kind(cvar)/=1)print *,'error-2'
if (kind(ivar)/=8)print *,'error-3'
if (len(cvar)/=3)print *,'error-4'
print *,'pass'
end
