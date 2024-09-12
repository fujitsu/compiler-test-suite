call s1
call s2
print *,'pass'
end
subroutine s1
type t
integer,allocatable::i
end type
type(t)::ttt
ttt%i=-1
if(ttt%i/=-1) print *,'err'
end
subroutine s2
type t
integer,allocatable::i
end type
type(t)::ttt
allocate(ttt%i)
ttt%i=10
if(ttt%i/=10) print *,'err'
end
