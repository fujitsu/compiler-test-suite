 module m1
           type y
              integer,allocatable::y1
          end type
         end module

        subroutine s1()
       use m1
        type(y) :: v(2)
       !$omp sections lastprivate(v)
        !$omp end sections
        end
print *,'pass'
end
