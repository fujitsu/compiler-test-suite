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
      integer:: inn_res(2)
    end function inn
end
print *,'pass'
end
