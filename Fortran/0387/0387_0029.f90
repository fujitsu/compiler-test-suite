interface
 function func1a() result(rst)
  integer(kind=8) :: rst(2)
 end function
 function func2a() result(rst)
  real(kind=8) :: rst(2)
 end function
end interface

procedure(func1a),pointer :: p1a
procedure(func1b),pointer :: p1b

p1a=>func1a
p1b=>p1a

print *,'pass'

 contains
  function func1b() result(rst)
   integer (kind=8) :: rst(2)
   procedure (func1a),pointer :: p1
   p1=>func1a
   rst = p1() 
  end function
  function func2b() result(rst)
   real (kind=8) :: rst(2)
   rst = 1.0
  end function
end

function func1a() result(rst)
 integer(kind=8) :: rst(2)
 rst=1
end function

function func2a() result(rst)
 real(kind=8) :: rst(2)
 rst = 1.0
end function
