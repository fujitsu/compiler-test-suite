 if (kind(func1()).ne.kind(func2())) print *,'error'

print *,'pass'

contains

function func1() result(rst)
 integer,allocatable :: rst(:)
 allocate(rst(1))
 rst=1
end function

function func2() result(rst)
 integer,allocatable :: rst
 allocate(rst)
 rst=1
end function

end
