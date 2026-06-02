module m
  integer :: value
  external ext
contains
  function f1()
    procedure(),pointer :: f1,f2
  entry f2()
  entry f3()
    procedure(),pointer :: f3
    f3=>ext
  end function
end

use m
procedure(),pointer :: p
value = 0
p=>f1()
call p
if (value /= 1) print *,1,value

value = 0
p=>f2()
call p
if (value /= 1) print *,2,value

value = 0
p=>f3()
call p
if (value /= 1) print *,3,value
print *,'pass'
end

subroutine ext()
  use m
  value = 1
end
