                  module m1
                    type y
                       character(1000),allocatable::y1
                    end type
                  end module

                subroutine s1(vv)
                  use m1
                  type(y) :: vv(2)
                 allocate(vv(1)%y1)
                  vv(1)%y1='1'
               !$omp parallel firstprivate(vv)
if (vv(1)%y1/='1') print *,101
                  deallocate(vv(1)%y1)
                !$omp end parallel
                end

print *,'pass'
end
