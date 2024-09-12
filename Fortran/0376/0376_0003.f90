module mod
  type ty1
   character(:),pointer     :: tpc01
  end type
end

use mod
interface
 function func1(i) result(j)
  use mod
  type (ty1)::i,j
 end function
end interface
type (ty1)::t1
t1=func1(t1)
print *,'pass'
end
 function func1(i) result(j)
  use mod
  type (ty1)::i,j
  j=i
 end function
