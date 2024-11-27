type t1
type(t2(4,:)),allocatable::cmp1
end type

type t2(k,l)
integer,kind::k
integer,len::l
type(t1)::cmp2
end type
end
