type t1
type(t2(4,:)),allocatable::cmp1
end type

type t2(k,l)
integer,kind::k
integer,len::l
type(t1),allocatable::cmp2
end type

type t3
type(t2(4,:)),allocatable::cmp3
end type
end
