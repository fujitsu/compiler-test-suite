subroutine s1
type t
  integer::x1
end type
class(*),pointer::p
class(t),pointer::pp
allocate(real::p)
allocate(pp)
end
call s1
print *,'pass'
end
