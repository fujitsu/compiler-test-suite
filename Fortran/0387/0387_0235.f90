interface
 function proc(x) result(y)
  character(len=2) :: x,y
 end function
 subroutine sub(x)
  interface
   function proc(x) result(y)
    character(len=2) :: x,y
   end function
  end interface
  procedure(proc), pointer :: x
 end subroutine
end interface

character(len=1) :: i

procedure(proc), pointer :: p
p => null()
call sub(p)

i = p('a')
if (i.ne.'a') print *,'fail'
print *,'pass'

end

function proc(x) result(y)
 character(len=2) :: x,y
 y=x
end function

subroutine sub(x)
 interface
  function proc(x) result(y)
   character(len=2) :: x,y
  end function
 end interface
 procedure(proc), pointer :: x
 x=>proc
end subroutine
