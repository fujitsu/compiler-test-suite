module m1
    implicit none
    interface 
     module subroutine    s01(ww)
       procedure(integer)::ww
     end subroutine 
    end interface 
end 

submodule (m1) smod
contains 
  module subroutine   s01(ww)
    implicit none
      procedure(integer)::ww
  end subroutine 
end


use m1
    procedure(integer)::ww
call s01(ww)
print *,'sngg183o : pass'
end
function ww(d) result(r)
  integer::d,r
   r=d
end
