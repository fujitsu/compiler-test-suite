subroutine s1
                    type y
                       integer,allocatable::y1
                    end type
contains
                subroutine s2(vv)
                  type(y) :: vv(:)
                 allocate(vv(1)%y1)
                !$omp sections lastprivate(vv)
                  vv(1)%y1=1
                !$omp end sections
                end
end   
print *,'pass'
end
