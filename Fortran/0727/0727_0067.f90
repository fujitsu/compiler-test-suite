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
          type (dt) :: x1=dt(1,2)
          type (dt) :: x2=dt(1,2)
          type (dt) :: x3=dt(1,2)

          x1 = x1
          if (x1%i/=2)write(6,*) "NG"
          if (x1%j/=1)write(6,*) "NG"

          call def_assign(x2,(x2))
          if (x2%i/=2)write(6,*) "NG"
          if (x2%j/=1)write(6,*) "NG"
print *,'pass'
       end program p

