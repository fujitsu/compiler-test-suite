module test
 implicit none
  procedure(),pointer:: p=> null()
end
subroutine sub
use test
end
print *,'pass'
end
