module m
  integer :: value
  integer,external :: ext
end

use m
interface
  function f1()
    procedure(integer),pointer :: f1
  end function
  function f2()
    procedure(integer),pointer :: f2
  end function
  function f3()
    procedure(integer),pointer :: f3
  end function
end interface
procedure(integer),pointer :: p
p=>f1()
if (p() /= 1) print *,1

p=>f2()
if (p() /= 1) print *,2

p=>f3()
if (p() /= 1) print *,3
print *,'pass'
end

integer function ext()
  ext = 1
end

function f1()
  integer, external :: ext
  procedure(integer),pointer :: f1,f2
entry f2()
entry f3()
  procedure(integer),pointer :: f3
  f2=>ext
end function
