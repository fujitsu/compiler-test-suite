module mod
interface
 function func() 
 end function
end interface
end module
  use mod
call s1
print *,'pass'
contains
 subroutine s1
     procedure(inn),pointer::p
p=>inn
if (p()/=1)print *,101
end subroutine
    function inn() result(inn_res)
      integer, pointer:: inn_res
allocate(inn_res,source=1)
    end function 
  end 
