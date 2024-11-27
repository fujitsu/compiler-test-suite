interface
 function func1() result(rst1)
  interface
   function func() result(rst_func)
    character (3) :: rst_func
   end function
  end interface
  procedure(func), pointer :: rst1
 end function
 function func() result(rst_func)
  character (3) :: rst_func
 end function
end interface

call csub1(func1)

contains
 subroutine csub1(func1)
  interface
   function func1() result(rst1)
    interface
     function func() result(rst_func)
      character (3) :: rst_func
     end function
     end interface
    procedure(func), pointer :: rst1
   end function
   function func() result(rst_func)
    character (3) :: rst_func
   end function
  end interface
  procedure(func), pointer :: pfp
  pfp => func1()

 end subroutine
end

function func1() result(rst1)
 interface
  function func() result(rst_func)
   character (3) :: rst_func
  end function
 end interface
 procedure(func), pointer :: rst1
 rst1 => func
end function

function func() result(rst_func)
 character (3) :: rst_func
 rst_func = 'abc'
end function
