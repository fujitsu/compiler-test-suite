                  module m1
                    type y
                       character(1000),allocatable::y1
                    end type
       contains
                subroutine s1(vv)
                  type(y),pointer :: vv(:)
                !$omp sections lastprivate(vv)
                  vv(1)%y1='1'
                !$omp end sections
                end
end
use m1

                  type(y),pointer :: vv(:)
allocate(vv(1))
                 allocate(vv(1)%y1)
call s1(vv)
print *,'pass'
end
