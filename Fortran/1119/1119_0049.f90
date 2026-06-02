module m
  type t
    integer :: a
  end type
  interface t
    module procedure intt
    module procedure realt
  end interface

contains
  type(t) function intt(x)
    integer x,z
!$omp atomic capture
z=intt%a
    intt%a = x

!$omp end atomic
!$omp atomic capture
z=intt%a
    intt%a = x+intt%a
!$omp end atomic
  end function

  type(t) function realt(x)
    real x,z
!$omp atomic capture
    z=realt%a
    realt%a = x
!$omp end atomic
  end function
end

use m
print *,'pass'
end
