module typedef
  type ty1
    integer ::i
  end type
  type ty2
    integer ::i
  end type
  type ty3
    integer ::i
  end type
  type ty4
    integer ::i
  end type
  type ty5
    integer ::i
  end type
end
  
module m
  interface assignment(=)
     module subroutine fun1(a,b)
       use typedef
       type(ty1),intent(out)::a
       integer,intent(in)::b
     end subroutine fun1
  end interface
  interface assignment(=)
     module subroutine fun2(a,b)
       use typedef
       type(ty2),intent(out)::a
       integer,intent(in)::b
     end subroutine fun2
  end interface
end

submodule(m)smoD
  interface assignment(=)
     module subroutine fun3(a,b)
       use typedef
       type(ty3),intent(out)::a
       integer,intent(in)::b
     end subroutine fun3
  end interface
  interface assignment(=)
     module subroutine fun4(a,b)
       use typedef
       type(ty4),intent(out)::a
       integer,intent(in)::b
     end subroutine fun4
  end interface
contains
  module subroutine fun1(a,b)
    use typedef
    type(ty1),intent(out)::a
    integer,intent(in)::b
    a%i = 1
  end subroutine
  module subroutine fun3(a,b)
    use typedef
    type(ty3),intent(out)::a
    integer,intent(in)::b
    type(ty4) :: x
    x = 1
    if (x%i /= 4) print *,'fun4:err'
    a%i = 3
  end subroutine
end

submodule(m:smoD)ssmod
  interface assignment(=)
     module procedure fun5
  end interface
contains
  module subroutine fun2(a,b)
    use typedef
    type(ty2),intent(out)::a
    integer,intent(in)::b
    type(ty3) :: x
    x = 1
    if (x%i /= 3) print *,'fun3:err'
    a%i = 2
  end subroutine
  module subroutine fun4(a,b)
    use typedef
    type(ty4),intent(out)::a
    integer,intent(in) ::b
    type(ty5) :: x
    x=1
    if (x%i/=5) print *,'fun5:err'
    a%i = 4
  end subroutine
  subroutine fun5(a,b)
    use typedef
    type(ty5),intent(out)::a
    integer,intent(in) ::b
    a%i = 5
  end subroutine
end

use typedef
use m
type(ty1) :: x
type(ty2) :: y
x = 1
y = 1
if (x%i/=1) print *,'fun1:err'
if (y%i/=2) print *,'fun2:err'
print *,'pass'
end
