module mod
interface
 function func() 
 end function
end interface
end module
  use mod
  implicit none
     block
     procedure(inn)::p
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
