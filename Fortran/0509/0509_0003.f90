module mod
interface
 function func() 
 end function
end interface
end module
module m1
  use mod
contains
subroutine s1
     block
     procedure(inn),pointer::p
     end block
  contains
    function inn() result(inn_res)
    end function inn
  end 
  end 
print *,'pass'
end
