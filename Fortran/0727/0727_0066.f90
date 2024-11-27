      module m
         type dt
            integer i, j
         end type
         interface assignment(=)
            module procedure def_assign
         end interface
      contains
         subroutine def_assign(lhs,rhs)
            type (dt), intent(out) :: lhs
            type (dt), intent(in) :: rhs
            lhs%i = rhs%j
            lhs%j = rhs%i
         end subroutine def_assign
      end module m
      program p
         use m
         type (dt) :: x
         x = dt(1,2)
         x = x
         if (x%i/=1)write(6,*) "NG"
         if (x%j/=2)write(6,*) "NG"
         x = dt(1,2)
         call def_assign(x,(x))
         if (x%i/=1)write(6,*) "NG"
         if (x%j/=2)write(6,*) "NG"
         x = dt(1,2)
  print *,'pass'
      end program p

