                  module m1
                    type y
                       integer,allocatable::y1
                    end type
contains

                subroutine s1(vv)
                  type(y),pointer :: vv(:)
                 allocate(vv(1)%y1)
                !$omp sections lastprivate(vv)
                  vv(1)%y1=1
                !$omp end sections
                end
                  end module

use m1
                  type(y),pointer :: vv(:)
allocate(vv(1))
call s1(vv)

if (vv(1)%y1/=1) print *,201

print *,'pass'
end
