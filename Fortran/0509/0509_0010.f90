module mod
interface
 function func() 
 end function
end interface
end module
  use mod
print *,'pass'
contains
subroutine s1
     block
     procedure(inn),pointer::p
     end block
end subroutine
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
