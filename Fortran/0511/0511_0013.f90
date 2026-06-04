type t
integer,allocatable::aaa
end type
class(t),allocatable::ttt
type(t)::yyy
allocate(ttt)
allocate(ttt%aaa,yyy%aaa)
yyy%aaa=-100
associate(zzz=>ttt)
zzz=yyy
end associate
print *,'pass'
end
