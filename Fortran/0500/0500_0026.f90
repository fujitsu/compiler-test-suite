                  module m1
                    type y
                       integer,allocatable::y1
                    end type
                    integer::k=2
                  end module

                subroutine s1(vv)
                  use m1
                  type(y) :: vv(k)
                  vv(1)%y1=1
                !$omp parallel firstprivate(vv)
if (vv(1)%y1/=1) print *,101
                  deallocate(vv(1)%y1)
                !$omp end parallel
                end

                  use m1
                  type(y) :: vv(2)
                 allocate(vv(1)%y1)
call s1(vv)
if (vv(1)%y1/=1) print *,101

print *,'pass'
end
