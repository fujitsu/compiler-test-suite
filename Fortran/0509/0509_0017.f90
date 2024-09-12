module mod
interface
 function func() 
 end function
end interface
end module
  use mod
  implicit none
     block
   type x
     procedure(inn),nopass,pointer::p
   end type
type(x)::v
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
