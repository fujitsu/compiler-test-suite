type t
character(:),allocatable::c3(:)
end type
type(t)::ttt
allocate(ttt%c3,source=["abc"])
ttt%c3=["456"]
if (any(ttt%c3/=['456'])) print *,201,ttt%c3
print *,'pass'
end
