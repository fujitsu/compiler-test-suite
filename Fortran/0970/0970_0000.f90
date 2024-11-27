interface
 function ifunc(arg) result(rst)
  integer :: arg
  integer :: rst
 end function
end interface
procedure(ifunc) :: p1, p2
print *,p1(1) + p2(2)
end
function p1(arg) result(rst)
 integer :: arg
 integer :: rst
 rst = arg
end function
function p2(arg) result(rst)
 rst = arg
end function
