subroutine s1
 type x
  integer::x1
  integer,allocatable:: x2(:)
 end type
 type(x),allocatable:: v(:),vv(:)
  allocate( v(2) )
  allocate( v(2)%x2(2),source=[1,2] )
vv=v
if (any(vv(2)%x2/=[1,2])) print *,202
end
call s1
print *,'pass'
end
