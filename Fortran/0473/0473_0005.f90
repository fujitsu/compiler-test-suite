module m
implicit none
 type x
   integer::x1=2
 end type
 type y
   integer::x1=2
 end type
 interface 
  module subroutine sub(i,xv)
  integer::i
  type(x)::xv
  end subroutine
  module subroutine sub2(i,k)
  integer::i,k
  end subroutine
  module function f1(k1) result(r)
   type(x),intent(in)::k1
   integer::r
  end
 end interface
end
submodule (m) xx
 interface gen
  procedure    sub2
 end interface
 interface gen2
  procedure    f1
 end interface
contains
 module subroutine sub(i,xv)
  integer::i
  type(x)::xv
  if (i /=1) print *,101
call sub2(i,i+1)
call gen (i,i+1)
if (f1(xv)/=2) print *,201
if (gen2(xv)/=2) print *,202
 end subroutine
  module subroutine sub2(i,k)
  integer::i,k
  if (i /=1) print *,102
  if (k /=2) print *,103
  end subroutine
  module function f1(k1) result(r)
   type(x),intent(in)::k1
   integer::r
   r=k1%x1
  end
end

use m
  type(x)::xv
call sub(1,xv)
print *,'pass'
end
