module m
contains
  function f1()
    procedure(integer),pointer :: f1,f2
    f1=>ff1
    return
  entry f2()
    f2=>ff2
  end function
  integer function ff1()
    ff1=1
  end function
  integer function ff2()
    ff2=2
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
if (p() /= 1) print *,1
p=>f2()
if (p() /= 2) print *,2
p=>ef1()
if (p() /= 3) print *,3
p=>ef2()
if (p() /= 4) print *,4
print *,'pass'
end

function ef1()
  integer, external :: eff1,eff2
  procedure(integer),pointer :: ef1,ef2
  ef1=>eff1
  return
entry ef2()
  ef2=>eff2
end function
integer function eff1()
  eff1=3
end function
integer function eff2()
  eff2=4
end function
