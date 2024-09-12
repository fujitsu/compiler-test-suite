subroutine  foo   
  type type_test1
     integer :: var1
     procedure(t), pointer,nopass :: p
     integer :: var2
  end type 
contains 
  function t() result(r)
      integer::r(2)
      r=0
  end function 

end 

print *,'pass'
end
