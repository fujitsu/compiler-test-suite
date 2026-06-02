module mod02
contains
  function ifun(i)
    character(i):: ifun
    ifun = "aaa"
  end function
end module

use mod02
procedure(ifun),pointer:: p
p=>ifun
if ( "aaa" .ne. ifun(3) ) print *,'fail'
print *,'pass '
end
