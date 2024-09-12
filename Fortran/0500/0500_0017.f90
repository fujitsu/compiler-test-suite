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
                  type(y) :: vv(k)
                !$omp sections lastprivate(vv)
                  vv(1)%y1=1
                !$omp end sections
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
