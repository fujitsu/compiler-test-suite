call s1
call s2
print *,'pass'
end
subroutine s1
type t
character(1)::c1
end type
type(t),allocatable::ttt
type(t)::zzz
zzz%c1="2"
ttt=zzz
if(ttt%c1/="2") print *,'err'
end
subroutine s2
type t
character(1)::c1
end type
type(t),allocatable::ttt(:)
type(t)::zzz(2)
zzz%c1="2"
ttt=zzz
if(any(ttt%c1/=["2","2"])) print *,'err'
end
