type x
  integer,pointer::p
end type
type (x):: v
allocate(v%p)
v%p=1
if (v%p/=1) print *,101
print *,'pass'
end
