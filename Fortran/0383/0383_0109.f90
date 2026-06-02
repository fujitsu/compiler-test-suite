procedure(rfun),pointer:: p
interface
  function rfun(i)
    character(i):: rfun
  end function
end interface
p=>rfun
if ( "aaa" .ne. p(3) ) print *,'fail'
print *,'pass '
end

function rfun(i)
  character(i):: rfun
  rfun = "aaa"
end function
