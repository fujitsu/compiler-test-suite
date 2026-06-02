implicit none

interface
 subroutine sub(pfp)
  interface
   function func(i) result(j)
    integer i,j
   end function
  end interface
  procedure(func),pointer :: pfp
 end subroutine
 function func(i) result(j)
  integer i,j
 end function
end interface

integer i
procedure(func),pointer :: ppp
call sub(ppp)

i=ppp(1)

if (i.ne.1) print *,'fail'

print *,'pass'

end

subroutine sub(pfp)
 interface
  function func(i) result(j)
   integer i,j
  end function
 end interface
 procedure(func),pointer :: pfp
 pfp => func
end subroutine

function func(i) result(j)
 integer i,j
 j=i
end function
