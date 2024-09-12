module mod
interface
 function func()
 end function
end interface
end module
subroutine sub
  use mod
type w
 integer::x
end type
     block
       procedure(inn),pointer::p
type(w)::v
p=>inn
v=p()
if (v%x/=1)print *,201
     end block
  contains
    function inn() result(inn_res)
      type(w)             :: inn_res
inn_res=w(1)
    end function inn
end
call sub
print *,'pass'
end
