interface
 function func1(i) result(rst)
  integer,allocatable :: i(:)
 end function
 function func2(i) result(rst)
  integer,allocatable :: i
 end function
end interface

 integer, allocatable :: i1(:), i2
 allocate(i1(1))
 allocate(i2)

 i1 = 1
 i2 = 2

 if (func1(i1).eq.func2(i2)) print *,'error'

 print *,'pass'

end

function func1(i) result(rst)
 integer,allocatable :: i(:)
 rst=i(1)
end function

function func2(i) result(rst)
 integer,allocatable :: i
 rst=i
end function
