module m1
type x
  integer::x1
end type
end
use m1
interface
function ifun(iii) result(sub)
use m1
type (x),pointer     :: sub
class(x) :: iii
end function
function jfun(iii) result(sub)
use m1
type (x)  :: sub
class(x) :: iii
end function
end interface

type (x),pointer     :: xx
class(x),allocatable :: iii
type (x),allocatable :: jjj
allocate(iii,jjj)
xx=> ifun(iii)
if (1.eq.2) xx= jfun(jjj)
print *,'pass'
end

function ifun(iii) result(sub)
use m1
type (x),pointer     :: sub
class(x) :: iii
end function
function jfun(iii) result(sub)
use m1
type (x)    :: sub
class(x) :: iii
end function
