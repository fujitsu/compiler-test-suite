use iso_c_binding
type( c_ptr):: p
type x
  integer::x1
end type
type( x ),target:: a(2)
type( x ),allocatable,target:: b(:)
allocate( b(2))
p=c_loc( a )
p=c_loc( b )
print *,'pass'
end
