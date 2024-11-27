module kinds
  integer, parameter ::  short = selected_int_kind(4)
  integer, parameter :: long = selected_real_kind(5,30)
end module kinds

function inner_prod(n,a,b)
  use kinds
  implicit none
  real(kind=long) inner_prod
  integer :: n
  real(kind=long) :: a(n), b(n)
  real(kind=selected_real_kind(precision(a)+1)) :: ai,p
  integer :: i
    p = 0
    do i = 1, n
       ai = a(i)
       p = p + ai*b(i)
    end do
    inner_prod = p
end function inner_prod

program main
  use kinds
  implicit none
  real(kind=long) :: inner_prod, a(3)=(/1.0,2e-1, 1.0/), &
                                 b(3)=(/1.0,2e-1,-1.0/)
  if (abs(sum(a*b)-4.0E-2)>0.1E-2)print *,'error-1'
  if (abs(inner_prod(3,a,b)-4.0E-02)>0.1E-2)print *,'error-2'
print *,'pass'
end program main
