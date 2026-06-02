module m10
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02z
      generic:: gen             => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
integer::kk
contains
 subroutine prc02z(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
 end subroutine
end
module m1
use m10
  private
  public::sub,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub()
     end subroutine
  end interface
end
submodule (m1) submod
contains
  module subroutine sub()
  implicit none
class(x1),allocatable:: v11p
allocate(v11p)
v11p%x01=1
call v11p%gen(2_1) 
if (kk            /= 4) print *,'error-013',kk
  end subroutine
end submodule
submodule (m1:submod) submod2
end
submodule (m1:submod2) submod3
end
submodule (m1:submod3) submod4
end
submodule (m1:submod4) submod5
contains
  module subroutine sub2()
  implicit none
class(x1),allocatable:: v11p
allocate(v11p)
v11p%x01=1
call v11p%gen(2_1) 
if (kk            /= 4) print *,'error-013',kk
  end subroutine
end submodule
use m1
call sub
call sub2
print *,'sngg156o : pass'
end
