subroutine s08
contiguous::p0
integer, pointer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
end
subroutine s07
integer, pointer::p0
contiguous::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
end
subroutine s06
pointer::p0
integer, contiguous::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
end
subroutine s05
integer, contiguous::p0
pointer::p0
type x0
 integer:: t0
end type
type(x0),target:: tt
end

print *,'pass'
end