interface
 function func1(i) result(j)
  interface
   function func(i) result(j)
    integer i,j
   end function
  end interface
  procedure(func),pointer :: i,j
 end function
 function func(i) result(j)
  integer i,j
 end function
end interface

procedure(func),pointer :: p,p2

p=>func
p2=>func1(p)

print *,'pass'

end

function func1(i) result(j)
 interface
  function func(i) result(j)
   integer i,j
  end function
 end interface
 procedure(func),pointer :: i,j
 j=>i
end function

function func(i) result(j)
 integer i,j
 j=i
end function
