type t1
integer::a
end type
type,bind(c)::t2
integer::b
end type
type(t1) z1
type(t2) z2
print *,same_type_as(z1,z2)
print *,extends_type_of(z1,z2)
end
