module m
implicit none
 type x
   integer::x1=2
 end type
 type y
   integer::x1=3
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
  module subroutine sub3(kk,k1) 
   type(x),intent(in)::k1
   integer,intent(out)::kk
  end
  module function f2(k1,k2) result(r)
   type(x),intent(in)::k1
   type(y),intent(in)::k2
   integer::r
  end
 end interface
 interface gen2
  procedure    f2
 end interface
 interface operator(.op.)
  procedure    f2
 end interface
end
submodule (m) xx
 implicit none
contains
  module procedure  sub
integer::ios=0
  type(y)::yv
character(100)::iom=''
if (gen2(xv,yv)/=5) print *,206
if ((xv.op.yv)/=5) print *,207
 end 
   module procedure  sub2
  if (i /=1) print *,102
  if (k /=2) print *,103
  end 
   module procedure sub3
   kk=k1%x1
  end
   module procedure f2
   r=k1%x1+k2%x1
  end
end

use m
type(x)::gv
integer::kg=1
call sub(kg,gv)
print *,'sngg446h : pass'
end
