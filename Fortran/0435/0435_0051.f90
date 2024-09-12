type x
  integer:: a
  integer,allocatable::z(:)
end type
  TYPE(x) :: v(1)
v=[ff()]
if (v(1)%a/=2) print *,10611
if (any(v(1)%z/=[1,2])) print *,10121,v(1)%z
if (size(v(1)%z)/=2) print *,10631
print *,'pass'
contains
function ff() result(r)
 type(x),allocatable::r
 allocate(r)
 r=x(2,[1,2])
end function
end
