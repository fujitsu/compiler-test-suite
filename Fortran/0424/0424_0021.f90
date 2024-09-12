module m
contains
  function f1()
    procedure(complex),pointer :: f1,f2
    f1=>ff1
    return
  entry f2()
    f2=>ff2
  end function
  complex function ff1()
    ff1 = (1,2)
  end function
  complex function ff2()
    ff2 = (3,4)
  end function
end

use m
interface
  function ef1()
    procedure(complex),pointer :: ef1
  end function
  function ef2()
    procedure(complex),pointer :: ef2
  end function
end interface
procedure(complex),pointer :: p
complex :: c
p=>f1()
c = p()
if (abs(c - (1,2)) > 0.1) print *,2
p=>f2()
c = p()
if (abs(c - (3,4)) > 0.1) print *,4
p=>ef1()
c = p()
if (abs(c - (5,6)) > 0.1) print *,6
p=>ef2()
c = p()
if (abs(c - (7,8)) > 0.1) print *,8
print *,'pass'
end

function ef1()
  complex, external :: eff1,eff2
  procedure(complex),pointer :: ef1,ef2
  ef1=>eff1
  return
entry ef2()
  ef2=>eff2
end function
complex function eff1()
  eff1 = (5,6)
end function
complex function eff2()
  eff2 = (7,8)
end function
