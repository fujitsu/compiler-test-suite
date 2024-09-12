interface
 function func() 
 end function
end interface
     block
     procedure(inn),pointer::p
     end block
print *,'pass'
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
  end 
