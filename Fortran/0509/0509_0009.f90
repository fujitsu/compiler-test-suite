module mod
interface
 function func() 
 end function
end interface
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
end module
  use mod
  implicit none
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
  end 
