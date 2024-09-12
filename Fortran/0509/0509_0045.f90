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
 p=>inn
if (p()/=1)print *,202
     end block
print *,'pass'
  contains
  end 
    function inn() result(inn_res)
      integer, pointer:: inn_res
allocate(inn_res,source=1)
    end function inn
