program pro
implicit none
interface
  subroutine sub( x)
    real,optional :: x(2)
  end subroutine sub
end interface
real, allocatable :: x1(:)
allocate(x1(2))
x1=3.0
call sub(x1)
end

subroutine sub(x)
  implicit none
  real, optional :: x(2)
  real :: y(2)

 y=LOG_GAMMA(x=x)
    if( .not.(y(1)>0.68 .and. y(1)<0.70))  print *,101
    if( .not.(y(2)>0.68 .and. y(2)<0.70))  print *,102
print *, "pass"
end subroutine sub
