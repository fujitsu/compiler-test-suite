call s1
call s2
print *,'pass'
end
subroutine s1
type t
integer::i
end type
type(t)::ttt
type(t),allocatable::zzz
ttt%i=-100
zzz=ttt
if(zzz%i/=-100) print *,'err'
end
subroutine s2
type t
integer::i
end type
type(t)::ttt
type(t),allocatable::zzz
allocate(zzz)
ttt%i=-100
zzz=ttt
if(zzz%i/=-100) print *,'err'
end
