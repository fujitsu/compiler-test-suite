module mod
 procedure(func),pointer :: xfunc
 contains
  function func()
   integer :: func
   func=1
  end function
end module

use mod

interface
 function func1()
  use mod
  procedure(func),pointer :: func1
 end function
end interface

xfunc=>func1()

print *,'pass'

end

function func1()
 use mod
 procedure(func),pointer :: func1
 func1=>xfunc
end function
