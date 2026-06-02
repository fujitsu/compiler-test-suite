module m1
   interface 
     module function f(d)
     end
   end interface
end

submodule (m1) smod
   contains
   module procedure f
   implicit none
   f=d
   end
end
use m1
implicit none
if (f(1.2)/=1.2) print *,101
print *,'sngg771h : pass'
end
