type t(a)
integer,kind::a
character(:),allocatable::c1
character(:,a),allocatable::c2
character(kind=a,len=:),allocatable::c3
end type
type(t(1)),allocatable::ttt
allocate(ttt)
allocate(ttt%c1,source="1")
allocate(ttt%c2,mold="2")
allocate(ttt%c3,source="3")
ttt%c1="abcde"
ttt%c2="abcde"
ttt%c3="abcde"
if(ttt%c1/="abcde") print *,'err'
if(ttt%c2/="abcde") print *,'err'
if(ttt%c3/="abcde") print *,'err'
print *,'pass'
end
