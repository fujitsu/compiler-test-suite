interface
 function proc(x) result(y)
  integer :: x,y
 end function
 subroutine sub(x)
  interface
   function proc(x) result(y)
    integer :: x,y
   end function
  end interface
  procedure(proc), pointer,intent(in) :: x
 end subroutine
end interface

procedure(proc), pointer :: p
p => proc
call sub(p)

print *,'pass'

end

function proc(x) result(y)
 integer :: x,y
 y=x
end function

subroutine sub(x)
 interface
  function proc(x) result(y)
   integer :: x,y
  end function
 end interface
 integer ii
 procedure(proc), pointer,intent(in) :: x
 ii = x(1)
end subroutine
