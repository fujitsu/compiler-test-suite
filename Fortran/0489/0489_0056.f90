use iso_c_binding
type( c_funptr):: p
type x
  sequence
  integer::x1
end type
type( x ),external:: xp
p=c_funloc( xp )
print *,'pass'
end
function xp()
type x
  sequence
  integer::x1
end type
type( x ):: xp
xp=x(1)
end

