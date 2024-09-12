                  module m1
                    type y
                       integer,allocatable::y1
                    end type
                  end module

                subroutine s1(vv)
                  use m1
                  type(y) :: vv(:)
                 allocate(vv(1)%y1)
                !$omp sections lastprivate(vv)
                  vv(1)%y1=1
                !$omp end sections
                end

print *,'pass'
end
