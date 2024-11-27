        type ty
         complex,allocatable:: cc[:]
         end type
        
        type(ty) :: obj
        complex,allocatable:: cc[:]
        !$omp threadprivate(obj)
        
        !$omp task
          obj%cc = (4,5)
        !$omp end task
        print*,obj%cc
        end

