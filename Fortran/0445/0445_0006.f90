subroutine  foo   
  type type_test1
     integer :: var1(2)
     procedure(proc_test), pointer,nopass :: pointer_test
  end type 
interface
  integer function proc_test()
  end function proc_test
end interface

end 

print *,'pass'
end
  integer function proc_test()
  proc_test = 0
  end function proc_test