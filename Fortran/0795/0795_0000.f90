module test
 implicit none
  external:: p
  pointer:: p
  data p/null()/
end
subroutine sub
use test
end
print *,'pass'
end
