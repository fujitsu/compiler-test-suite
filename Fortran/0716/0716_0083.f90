use iso_c_binding

interface
 function func1() result(rst)
  integer :: rst
 end function
end interface


type(c_funptr) :: tcfp
procedure(func1),pointer :: pp

tcfp = c_funloc(func1)
pp => func1
call c_f_procpointer(tcfp,pp)

end

function func1() result(rst)
 integer :: rst
 rst=1
end function

