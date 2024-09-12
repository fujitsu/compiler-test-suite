subroutine  foo   
  type type_test1
     integer :: var1(2)
     procedure(proc_test), pointer,nopass :: pointer_test
  end type 
contains 
  subroutine       proc_test()
  end subroutine
end 

print *,'pass'
end
