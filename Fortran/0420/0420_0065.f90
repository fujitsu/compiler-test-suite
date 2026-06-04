module m1
interface 
 subroutine x
 end subroutine
end interface
procedure(x),pointer ::a
!$omp threadprivate(a)
end
subroutine ss2
use m1
a=>x
call a
end
subroutine x
end
call ss2
print *,'pass'
end
