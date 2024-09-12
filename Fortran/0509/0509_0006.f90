module mod
interface
 function func() 
 end function
end interface
end module
  use mod
     procedure(inn),pointer::p
print *,'pass'
contains
 subroutine s0
end subroutine
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function 
  end 
