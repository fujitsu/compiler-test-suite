module m
type t
integer ::i=1
end type t
type(t),private:: ttt
end
module m1
type t
integer ::i=1
end type t
type(t),private:: ttt
end

module m2
type t
integer ::i=1
end type t
type(t),private:: ttt
end
use m
print *,'pass'
end