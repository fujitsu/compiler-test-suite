module mod
interface
 function func()
 end function
end interface
end module
subroutine sub
  use mod
     block
       procedure(inn),pointer::p
     end block
  contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
    end function inn
end

print *,'pass'
end
