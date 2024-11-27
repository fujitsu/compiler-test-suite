type t
sequence
real x
end type
type(t),pointer :: y,z
print *,same_type_as(y,z)
print *,extends_type_of(y,z)
end

