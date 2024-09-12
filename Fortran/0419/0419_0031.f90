type t(a)
integer,kind::a
character(:),allocatable::c1(:)
character(:,a),allocatable::c2(:)
character(kind=a,len=:),allocatable::c3(:)
end type
type(t(1))::ttt
allocate(ttt%c1,source=["abcde"])
allocate(ttt%c2,source=["abcdefg"])
allocate(ttt%c3,source=["abcdefgh"])
ttt%c1=["1"]
ttt%c2=["12"]
ttt%c3=["123"]
if(any(ttt%c1/=["1"])) print *,'err1'
if(any(ttt%c2/=["12"])) print *,'err2'
if(any(ttt%c3/=["123"])) print *,'err3'
print *,'pass'
end
