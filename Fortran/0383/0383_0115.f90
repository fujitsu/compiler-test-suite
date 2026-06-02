type ty
  procedure(rfun),nopass,pointer:: p
end type
type(ty):: tp

interface
function rfun(i)
  character(i):: rfun
end function
end interface
tp%p=>rfun
if ( "aaa" .ne. tp%p(3) ) print *,'fail'
print *,'pass ' 
end

function rfun(i)
  character(i):: rfun
  rfun = "aaa"
end function
