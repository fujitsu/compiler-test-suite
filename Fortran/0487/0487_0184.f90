module m1
          type t01
             integer :: x1=10
          end type 
          type t02
             integer :: x1=20
          end type 
integer,parameter::n1=1,n2=2
end
module m2
use m1
interface
 module subroutine w01()
 end
end interface
interface ior
     function ior01(d)
      import
      type(t01),intent(in):: d
     end
end interface
end

submodule (m2) smod
contains
 module subroutine w01()
  type(t01)::v,vv
  type(t02)::w,ww
end
end

use m2
call w01()
print *,'pass'
end
