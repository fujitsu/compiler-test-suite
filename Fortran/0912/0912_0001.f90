type t1
class(t2(4,:)),allocatable::cmp2
end type

type t2(k,l)
integer,kind::k
integer,len::l
type(t1)::cmp1
end type

type t3
type(t1),allocatable::cmp3
end type
end
