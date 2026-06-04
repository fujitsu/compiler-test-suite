module m1
   interface 
     module function f()
     end
   end interface
end

submodule (m1) smod
   contains
   module procedure f
   implicit none
   f=2.2
   end
end
use m1
implicit none
real,external::x
if (f()/=2.2) print *,101
print *,'sngg773h : pass'
end

