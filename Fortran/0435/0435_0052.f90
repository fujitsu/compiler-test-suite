type x
  integer:: a
  integer,allocatable::z(:)
end type
  TYPE(x) :: v(2)
v=[(ff(),n=1,2)]
if (v(1)%a/=2) print *,10611
if (any(v(1)%z/=[1,2])) print *,10121,v(1)%z
if (size(v(1)%z)/=2) print *,10631
if (v(2)%a/=2) print *,10611
if (any(v(2)%z/=[1,2])) print *,10122,v(2)%z
if (size(v(2)%z)/=2) print *,10631
print *,'pass'
contains
function ff() result(r)
 type(x),allocatable::r
 allocate(r)
 r=x(2,[1,2])
end function
end
