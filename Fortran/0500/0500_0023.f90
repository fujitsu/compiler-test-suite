                  module m1
                    type y
                       integer,allocatable::y1
                    end type
                    integer::k=2
       contains
   subroutine ss(vv)
       type(y) :: vv(k)
     call s1(vv)
    contains
                subroutine s1(vv)
                  type(y) :: vv(:)
                  vv(1)%y1=1
                !$omp parallel firstprivate(vv)
if (vv(1)%y1/=1) print *,101
                  deallocate(vv(1)%y1)
                !$omp end parallel
                end
end
end

                  use m1
                  type(y) :: vv(2)
                 allocate(vv(1)%y1)
call ss(vv)
if (vv(1)%y1/=1) print *,101

print *,'pass'
end