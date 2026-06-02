module rr9
end
module t
use rr9
end
module m1
use t 
private
public::s,sub
  interface
     module subroutine s
     end subroutine
     module subroutine sub()
     end subroutine
module function c() result(r)
character(:),allocatable::r
end function
  end interface
end
submodule (m1) zz
type x
procedure(c),pointer,nopass:: p
end type
type(x)::v
contains
module procedure s
v%p=>c
end 
module procedure c
allocate(character::r)
r='a'
end 
end 

print *,'sngg442o : pass'
end
