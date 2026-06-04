module m1
implicit none
interface 
   module subroutine s
   end
     module character(k) function c(k)
     end
end interface
interface gen
procedure::c
end interface
end 
submodule (m1) submod2
interface 
     module character(k) function w(k)
     end
end interface
interface gen2
procedure::w
end interface
contains
  subroutine sub2()
  implicit none
  if (gen2(1)/='a') print *,80011
  end 
module procedure c
c='a'
end 
   module subroutine s
      call sub2
   end
module procedure w
w='a'
end 
end submodule 

use m1
print *,'sngg470o : pass'
end
