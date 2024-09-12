module m
  interface 
    integer function eff()
    end function
  end interface
contains
  function f1()
    procedure(eff),pointer :: f1,f2
  entry f2()
    f2=>eff
  end function
end

use m
interface
  function ef1()
    procedure(integer),pointer :: ef1
  end function
  function ef2()
    procedure(integer),pointer :: ef2
  end function
end interface
procedure(integer),pointer :: p
p=>f1()
if (p() /= 10) print *,1
p=>f2()
if (p() /= 10) print *,2
p=>ef1()
if (p() /= 10) print *,3
p=>ef2()
if (p() /= 10) print *,4
print *,'pass'
end

function ef1()
  use m
  procedure(eff),pointer :: ef1,ef2
entry ef2()
  ef2=>eff
end function

integer function eff()
  eff=10
end function
