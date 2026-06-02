module m1
    implicit none
    interface 
     module subroutine s01(q1) 
    procedure(abs),pointer::q1
end 
    end interface 
end 

submodule (m1) smod
contains 
module procedure  s01
interface genq1
  procedure::q1
end interface
end
end
use m1
    procedure(abs),pointer::q1
call s01(q1)
print *,'sngg761h : pass'
end
