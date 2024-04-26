module m1
  type test
     integer :: var(2)
     procedure(proc_test), pointer,nopass :: pointer_test
  end type 
  contains
  integer function proc_test() 
    proc_test=0
  end function 
end 

use m1
print *,'pass'
end
