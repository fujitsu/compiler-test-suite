module mod
interface
 function func() 
 end function
end interface
end module
  use mod
interface
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
end interface
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
contains
    function ixx() result(inn_res)
      integer, pointer:: inn_res
    end function
  end 
