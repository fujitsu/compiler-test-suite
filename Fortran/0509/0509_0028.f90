module mod
interface
 function func() 
 end function
end interface
end module
  use mod
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
    end function inn
  end 