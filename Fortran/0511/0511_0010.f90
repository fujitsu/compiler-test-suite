type t
integer,allocatable::aaa
end type
class(t),allocatable::ttt
type(t)::yyy
allocate(ttt)
allocate(ttt%aaa,yyy%aaa)
yyy%aaa=-100
select type(zzz=>ttt)
class is(t)
ttt=yyy
end select
print *,'pass'
end
