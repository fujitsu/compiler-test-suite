module mod
type ty
  procedure(rfun),nopass,pointer:: p
end type
type(ty):: tp
contains
function rfun(i)
  character(i):: rfun
  rfun = "aaa"
end function
end

use mod
tp%p=>rfun
if ( "aaa" .ne. tp%p(3) ) print *,'fail'
print *,'pass '
end
