type t
character(:),allocatable::c3(:)
end type
type(t)::ttt
allocate(ttt%c3,source=["abc"])
ttt%c3=["456"]
if (ttt%c3(1)/='456') print *,101,ttt%c3
print *,'pass'
end
