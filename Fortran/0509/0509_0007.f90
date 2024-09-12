module mod
contains
 function func() 
  func=1
 end function
end module
  use mod
  implicit none
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
