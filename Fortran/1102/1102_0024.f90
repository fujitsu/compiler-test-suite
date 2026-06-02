module m1
    implicit none
    interface 
     module subroutine    s01()
     end  subroutine 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
       implicit none
     end  
end
use m1
call s01
print *,'sngg190o : pass'
end
