module m1
  interface
   module function c() result(r)
   integer(8)     ::r
   end function
  end interface
end
submodule (m1) zz
procedure(c),pointer:: p
contains
module procedure c
r=1
end 
  subroutine su  
  implicit none
  character::cc
  p=>c
  if (p()/=1) print *,1001
  end 
end submodule 

print *,'sngg452o : pass'
end
