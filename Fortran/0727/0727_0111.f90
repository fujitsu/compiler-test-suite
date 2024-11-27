       module m
          type dt
             integer i, j
          end type
          interface assignment(=)
             module procedure def_assign
          end interface
       contains
          elemental subroutine def_assign(lhs,rhs)
             type (dt), intent(out) :: lhs
             type (dt), intent(in) :: rhs
             lhs%i = rhs%j
             lhs%j = rhs%i
          end subroutine def_assign
          elemental subroutine d_assign(lhs,rhs,lhs2,rhs2)
             type (dt), intent(out) :: lhs,lhs2
             type (dt), intent(in) :: rhs,rhs2
             lhs%i = rhs%j
             lhs%j = rhs%i
             lhs2%i = rhs2%j
             lhs2%j = rhs2%i
          end subroutine d_assign
       end module m
       program p
          use m
          type (dt) :: x1(2)=(/dt(1,2),dt(11,12)/)
          type (dt) :: x2(2)=(/dt(1,2),dt(11,12)/)
          type (dt) :: x3(2)=(/dt(1,2),dt(11,12)/)
          type (dt) :: x4(2)=(/dt(1,2),dt(11,12)/)
          type (dt) :: x5(2)=(/dt(1,2),dt(11,12)/)

          x1 = x1
          if (x1(1)%i/=2)write(6,*) "NG"
          if (x1(1)%j/=1)write(6,*) "NG"
          if (x1(2)%i/=12)write(6,*) "NG"
          if (x1(2)%j/=11)write(6,*) "NG"

          call def_assign(x2,(x2))
          if (x2(1)%i/=2)write(6,*) "NG"
          if (x2(1)%j/=1)write(6,*) "NG"
          if (x2(2)%i/=12)write(6,*) "NG"
          if (x2(2)%j/=11)write(6,*) "NG"

          call d_assign(x4,(x4),x5,(x5))
          if (x4(1)%i/=2)write(6,*) "NG"
          if (x4(1)%j/=1)write(6,*) "NG"
          if (x4(2)%i/=12)write(6,*) "NG"
          if (x4(2)%j/=11)write(6,*) "NG"
          if (x5(1)%i/=2)write(6,*) "NG"
          if (x5(1)%j/=1)write(6,*) "NG"
          if (x5(2)%i/=12)write(6,*) "NG"
          if (x5(2)%j/=11)write(6,*) "NG"
print *,'pass'
       end program p

