module mod
interface
 function func() 
 end function
end interface
end module
  use mod
print *,'pass'
contains
 subroutine s0
     procedure(inn),pointer::p
end subroutine
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function 
  end 