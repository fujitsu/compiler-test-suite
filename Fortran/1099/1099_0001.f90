module m1
   interface 
     module function f(d)
     end
   end interface
end

submodule (m1) smod
   implicit none
   contains
   module procedure f
   f=d
   end
end
use m1
implicit none
if (f(1.2)/=1.2) print *,101
print *,'sngg770h : pass'
end
