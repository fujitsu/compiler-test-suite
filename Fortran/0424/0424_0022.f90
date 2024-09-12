module m
  type ty
    integer i
  end type
contains
  function f1()
    procedure(type(ty)),pointer :: f1,f2
    f1=>ff1
    return
  entry f2()
    f2=>ff2
  end function
  type(ty) function ff1()
    ff1%i = 1
  end function
  type(ty) function ff2()
    ff2%i = 2
  end function
end

use m
interface
  function ef1()
    import ty
    procedure(type(ty)),pointer :: ef1
  end function
  function ef2()
    import ty
    procedure(type(ty)),pointer :: ef2
  end function
end interface
procedure(type(ty)),pointer :: p
type(ty) :: t
p=>f1()
t = p()
if (t%i /= 1) print *,1
p=>f2()
t = p()
if (t%i /= 2) print *,2
p=>ef1()
t = p()
if (t%i /= 3) print *,3
p=>ef2()
t = p()
if (t%i /= 4) print *,4
print *,'pass'
end

function ef1()
  use m
  type(ty), external :: eff1,eff2
  procedure(type(ty)),pointer :: ef1,ef2
  ef1=>eff1
  return
entry ef2()
  ef2=>eff2
end function

function eff1()
  use m
  type(ty) :: eff1
  eff1%i = 3
end function
function eff2()
  use m
  type(ty) :: eff2
  eff2%i = 4
end function
