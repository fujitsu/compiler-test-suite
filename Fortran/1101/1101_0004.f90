module m1
implicit none
interface 
     module character(2) function c(k)
     end
     module subroutine s
     end
end interface
interface gen
procedure::c
end interface
end 
submodule (m1) submod2
contains
  subroutine sub2()
  implicit none
  character(2)::cc
  cc=gen(1)
  if (cc/='ab') print *,9001
  end 
module procedure c
c='ab'
if (k/=1) print *,8001
end 
module procedure s
call sub2
end
end submodule 

use m1
call s
print *,'sngg478o : pass'
end
