print*, f(NULL())
contains
function f(dmy)
integer,allocatable,optional :: dmy
f=dmy
end function
end

