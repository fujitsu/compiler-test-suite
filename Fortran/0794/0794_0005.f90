module test
  procedure(),pointer:: p=> null()
end
subroutine sub
use test
end
print *,'pass'
end
