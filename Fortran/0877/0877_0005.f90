module m1
type x
  integer::x1
end type
end
use m1
interface
function ifun() result(sub)
use m1
type(x),pointer     :: sub
end function
end interface

class(x),pointer     :: xx
xx=> ifun()
end
function ifun() result(sub)
use m1
class(x),pointer     :: sub
end function
