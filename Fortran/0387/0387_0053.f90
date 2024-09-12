interface
 function func(i) result(rst)
  integer :: i,rst
 end function
end interface

procedure(func),pointer :: pfp
procedure(),pointer     :: ppp

pfp => null()
ppp => pfp

print *,'pass'

end

function func(i) result(rst)
 integer :: i,rst
 rst = i
end function
