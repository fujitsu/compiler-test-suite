interface
 function func01() result(rst01)
  interface
   function func02() result(rst02)
    integer :: rst02
   end function
  end interface
  procedure(func02), pointer :: rst01
 end function
end interface

procedure(func01),   pointer :: pfuncp01

pfuncp01 => func01

print *,'pass'

end

function func01() result(rst01)
 interface
  function func02() result(rst02)
   integer :: rst02
  end function
 end interface
 procedure(func02), pointer :: rst01
end function
