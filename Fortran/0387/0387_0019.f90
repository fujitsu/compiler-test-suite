interface
 function func_c4(c4) result(rst)
  complex(kind=4) :: c4
  complex(kind=4) :: rst
 end function
end interface

procedure(),pointer        :: p0
procedure(func_c4),pointer :: p4

procedure(complex),pointer :: pp

call sub_c4(pp)
call sub_c4(p4)

print *,'pass'

contains
 subroutine sub_c4(p4)
  interface
   function func_c4(c4) result(rst)
    complex(kind=4) :: c4
    complex(kind=4) :: rst
   end function
  end interface
  procedure(func_c4),pointer :: p4
 end subroutine
end

function func_c4(c4) result(rst)
 complex(kind=4) :: c4
 complex(kind=4) :: rst
 rst=c4
end function
