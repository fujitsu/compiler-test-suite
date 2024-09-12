                  module m1
                    type y
                       character(1000),allocatable::y1
                    end type
       contains
                subroutine s1(vv)
                  type(y),pointer :: vv(:)
                  vv(1)%y1='1'
                !$omp parallel firstprivate(vv)
if (vv(1)%y1/='1') print *,101
                  deallocate(vv(1)%y1)
                !$omp end parallel
                end
end
use m1

                  type(y),pointer :: vv(:)
call omp_set_num_threads(1)
allocate(vv(1))
                 allocate(vv(1)%y1)
call s1(vv)
if (allocated(vv(1)%y1)) print *,90001
print *,'pass'
end
