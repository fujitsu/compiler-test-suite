program pro
implicit none
integer::r=2
call sub(r)
contains
subroutine sub(r)
  implicit none
  integer::r
  integer :: n(r,r)
  real :: x(r,r)
  real :: y(2,2)

  n(1,1)= 1
  n(1,2)= 2
  n(2,1)= 1
  n(2,2)= 2
  x(1,1)= 1.4
  x(1,2)= 2.0
  x(2,1)= 1.8
  x(2,2)= 2.2
  y=BESSEL_YN(n=n,x=x)
    if( .not.(y(1,1)<-0.46 .and. y(1,1)>-0.48))  print *,101
    if( .not.(y(2,1)<-0.21 .and. y(2,1)>-0.23))  print *,102
    if( .not.(y(1,2)<-0.60 .and. y(1,2)>-0.62))  print *,103
    if( .not.(y(2,2)<-0.50 .and. y(2,2)>-0.52))  print *,104
    print*,"pass"
end subroutine sub
end
