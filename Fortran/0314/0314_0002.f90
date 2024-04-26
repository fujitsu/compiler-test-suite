module mod
structure /st/
  integer(kind=2) A(1,1)
  integer(kind=8) B(1,1,1)
end structure
contains
  integer(kind=4) function func(a)
  func=0
  print *,'*** ok ***'
  end function
end

use mod
f=func(a)
end
