subroutine  foo   
  type type_test1
     integer :: var1(2)
     procedure(proc_test), pointer,nopass :: pointer_test
  end type 
contains 
  integer function proc_test()
      proc_test=0
  end function proc_test

end 

print *,'pass'
end
