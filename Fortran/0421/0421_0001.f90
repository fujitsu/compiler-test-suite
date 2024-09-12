type t(a)
integer,kind::a
character(:,a),allocatable::c3(:)
end type
type(t(1))::ttt
ttt%c3=["12345"]
if(any(ttt%c3/=["12345"])) print *,'err3',ttt%c3
if(len(ttt%c3)/=5) print *,'err4',len(ttt%c3)
print *,'PASS'
end
