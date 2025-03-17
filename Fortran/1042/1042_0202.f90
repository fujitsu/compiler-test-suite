type a
  integer,allocatable,dimension(:)::x
end type
type(a),pointer::y
integer,pointer::yy(:)
allocate(y)
allocate(y%x(2))
y%x(:)=(/1,2/)
yy=>y%x
deallocate(y)
print *,'pass'
end


