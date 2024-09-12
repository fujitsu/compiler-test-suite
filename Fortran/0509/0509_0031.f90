module mod
interface
 function func() 
 end function
end interface
end module
  use mod
print *,'pass'
  contains
    subroutine s
     procedure(inn),pointer::p
    end
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
