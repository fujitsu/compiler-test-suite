                  module m1
                    type y
                       integer,allocatable::y1
                    end type
                  end module

                subroutine s1(vv)
                  use m1
                  type(y) :: vv(2)
                 allocate(vv(1)%y1)
                !$omp sections lastprivate(vv)
                  vv(1)%y1=1
                !$omp end sections
                end

                  use m1
                  type(y) :: vv(2)
                call       s1(vv)
                  if (vv(1)%y1/=1) print *,1001
print *,'pass'
end
