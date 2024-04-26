module m
contains
 subroutine msub
  print *,'pass'
 end subroutine
end

subroutine sub
 use m
 call msub
end

call sub
end
