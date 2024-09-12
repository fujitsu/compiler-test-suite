module mod
interface
 function func() 
 end function
end interface
end module
  use mod
     block
     procedure(inn),pointer::p
p=>inn
if (p()/=1) print *,202
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
      allocate(inn_res)
    inn_res=1
    end function inn
  end 
