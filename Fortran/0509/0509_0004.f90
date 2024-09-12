module mod
interface
 function func() 
 end function
end interface
end module
module m1
contains
subroutine s1
     block
     procedure(inn),pointer::p
     end block
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
  end 
print *,'pass'
end
