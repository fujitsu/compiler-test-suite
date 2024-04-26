module m
implicit type(t)(v)
type,bind(c) :: t
integer ::iii=1
end type
type(t),bind(c) :: v1
bind(c)::v2
type(t)::v3=t(1)
type(t)::v4
end
use m
print *,'pass'
end
