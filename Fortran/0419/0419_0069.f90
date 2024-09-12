type t(a)
integer,kind::a
character(:),allocatable::c1(:)
character(:,a),allocatable::c2(:)
character(kind=a,len=:),allocatable::c3(:)
end type
type(t(1)),allocatable::ttt(:)
allocate(ttt(1))
allocate(ttt(1)%c1,source=["abcde"])
allocate(ttt(1)%c2,source=["abcdefg"])
allocate(ttt(1)%c3,source=["abcdefgh"])
ttt(1)%c1=["1"]
ttt(1)%c2=["12"]
ttt(1)%c3=["123"]
if(any(ttt(1)%c1/=["1"])) print *,'err1'
if(any(ttt(1)%c2/=["12"])) print *,'err2'
if(any(ttt(1)%c3/=["123"])) print *,'err3'
print *,'pass'
end
