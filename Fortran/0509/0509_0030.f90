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
    function inn() result(inn_res)
    end function inn
  end 
