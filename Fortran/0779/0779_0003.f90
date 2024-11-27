subroutine s07
integer::p0
pointer::p0
contiguous::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end
subroutine s06
pointer::p0
integer::p0
contiguous::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end
subroutine s05
pointer::p0
contiguous::p0
integer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end
subroutine s04
contiguous::p0
integer::p0
pointer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end
subroutine s03
contiguous::p0
pointer::p0
integer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end
subroutine s02
integer::p0
contiguous::p0
pointer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end
subroutine s01
integer,contiguous,pointer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
p0=>tt%t0
end

print *,'pass'
end
