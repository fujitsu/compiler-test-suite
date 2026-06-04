module m1
  interface
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
module function c() result(r)
character(:),allocatable::r
allocate(character::r)
r='a'
end 
end 
submodule (m1:zz) submod
contains
  subroutine su  
  implicit none
  character::cc
  cc=v%p()
  end 
end submodule 

print *,'sngg448o : pass'
end
