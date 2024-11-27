procedure(integer),pointer :: pp

pp => func1()

pp => func2()

contains

 function func1()
  procedure(),pointer :: func1
  func1 => null()
 end function

 function func2()
  integer,external,pointer :: func2
  func2 => null()
 end function

end
