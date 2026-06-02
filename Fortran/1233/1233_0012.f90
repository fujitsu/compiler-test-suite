module m1
  interface
     module subroutine s1()
     end
  end interface
end
submodule (m1) smod
 integer :: n
!$omp threadprivate(n)
  interface
     module subroutine s2()
     end
  end interface
contains
module subroutine s1()
n=1
call s2
end
end
submodule (m1:smod) ssmod
contains
module subroutine s2()
if(n/=1) print *,2929
end
end
use m1
call s1()
     print *,'sngg644t : pass'
     end
