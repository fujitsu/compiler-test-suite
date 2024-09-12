interface
 function fun01()
  character(:),pointer::fun01
 end function
end interface

character(3)::pa(1,2)
pa = fun01()

print *,'pass'

contains
 function func()
  procedure(),pointer :: func
  func =>null()
 end function
end

function fun01()
 character(:),pointer::fun01
 allocate(character::fun01)
 fun01 = '1'
end function
