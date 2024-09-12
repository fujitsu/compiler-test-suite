module m
  integer :: value
  integer,external :: ext
contains
  function f1()
    procedure(integer),pointer :: f1,f2
  entry f2()
  entry f3()
    procedure(integer),pointer :: f3
    f3=>ext
  end function
end

use m
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
  ext=1
end
