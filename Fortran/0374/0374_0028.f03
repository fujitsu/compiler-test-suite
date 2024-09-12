module mod1
   type ty1
     integer :: a(10)
   end type
   type (ty1),protected  :: t1

  contains
    subroutine sub1()
    type (ty1) :: t1
    type ty2
      integer :: a(10)
    end type
end subroutine
end module

use mod1
print *,'pass'
end
