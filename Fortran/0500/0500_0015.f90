                  module m1
                    type y
                       integer,allocatable::y1
                    end type
                    integer::k=2
contains

                subroutine s1(vv)
                  type(y) :: vv(:)
                !$omp sections lastprivate(vv)
                  vv(1)%y1=1
                !$omp end sections
                end
                  end module

                  use m1
                  type(y) :: vv(2)
                 allocate(vv(1)%y1)
call s1(vv)
if (vv(1)%y1/=1) print *,101

print *,'pass'
end