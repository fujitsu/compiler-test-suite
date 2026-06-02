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
     module integer(8) function d() 
     end
end interface
contains
  subroutine sub2()
  implicit none
    interface gen
     procedure::d
    end interface
  if (gen(1)/='a') print *,8001
  if (gen()/=2   ) print *,8002
  end 
module procedure d
  if (gen(1)/='a') print *,8001
d=2 
end 
     module character(k) function c(k)
c='a'
end 
   module subroutine s
      call sub2
  if (gen(1)/='a') print *,8001
   end
end submodule 

use m1
call s
  if (gen(1)/='a') print *,8001
print *,'sngg465o : pass'
end
