module m1
interface
 function func() 
 end function
end interface
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