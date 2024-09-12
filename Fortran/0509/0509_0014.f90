module mod
interface
 function inn() 
 end function
end interface
end module
  use mod
  implicit none
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
  contains
    function kkn() result(inn_res)
      integer, pointer:: inn_res
    end function 
  end 
