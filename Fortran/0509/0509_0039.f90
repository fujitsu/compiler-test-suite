module mod
interface
 function func() 
 end function
end interface
end module
  use mod
     block
type x
     procedure(inn),nopass,pointer::p
end type
type(x)::v
v%p=>inn
k=  v%p()
if (k    /=1) print *,k  
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
    inn_res=1
    end function inn
  end 
