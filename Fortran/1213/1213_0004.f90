module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type,extends(e)::ee
     integer(8),allocatable::e2
 end type
contains
   function f(w) result(r)
     class(e),allocatable::r
  class(e)::w
     r=w
   end
subroutine s1(w)
     class(e),allocatable::name
  class(e)::w

       name=f(w)
end
end
use m1
  class(e),allocatable::w
allocate(ee::w)
call s1(w)
     print *,'sngg362s : pass'
     end
