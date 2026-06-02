module m1
implicit none
type z
 integer::zz
end type
interface 
   module subroutine s
   end
     module function c(k) result(r)
       type(z)::r
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
       type(z)::r
  r=  gen(1)
  if (r%zz/=1) print *,8001
  if (gen()/=2   ) print *,8002
  end 
module procedure d
       type(z)::r
  r=  gen(1)
  if (r%zz/=1) print *,8001
d=2 
end 
     module function c(k) result(r)
       type(z)::r
r%zz=k
end 
   module subroutine s
       type(z)::r
      call sub2
  r=  gen(1)
  if (r%zz/=1) print *,8001
   end
end submodule 

use m1
       type(z)::r
call s
  r=  gen(1)
  if (r%zz/=1) print *,8001
print *,'sngg464o : pass'
end
