interface
function rfun(i)
  character(i):: rfun
end
end interface
procedure(rfun),pointer:: p
p=>rfun
if ( "aaa" .ne. p(3) ) print *,'fail'
print *,'pass '
end

function rfun(i)
  character(i):: rfun
  rfun = "aaa"
end function
