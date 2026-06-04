module m
  integer :: called=0
  interface 
    subroutine sub()
    end subroutine
  end interface
contains
  function f1()
    procedure(sub),pointer :: f1,f2
  entry f2()
    f2=>sub
  end function
end

use m
interface
  function ef1()
    import sub
    procedure(sub),pointer :: ef1
  end function
  function ef2()
    import sub
    procedure(sub),pointer :: ef2
  end function
end interface
procedure(sub),pointer :: p
p=>f1()
call p
if (called /= 1) print *,1
p=>f2()
call p
if (called /= 2) print *,2
p=>ef1()
call p
if (called /= 3) print *,3
p=>ef2()
call p
if (called /= 4) print *,4
print *,'pass'
end

function ef1()
  use m
  procedure(sub),pointer :: ef1,ef2
entry ef2()
  ef2=>sub
end function

subroutine sub()
  use m 
  called = called + 1
end subroutine
