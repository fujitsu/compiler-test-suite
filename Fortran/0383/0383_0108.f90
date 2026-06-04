module mod1
  contains
  function m1func1() result(rst)
    interface
      function func1() result(rst)
        integer rst
      end function
    end interface
    procedure(func1),pointer :: rst
    rst=>func1
  end function
end module

use mod1

interface
function func1() result(rst)
  integer rst
end function
end interface
procedure(func1),pointer :: pp
pp=>m1func1()
if ( 1 .ne. pp()) print *,'fail'
print *,'pass '

end

function func1() result(rst)
  integer rst
  rst=1
end function
