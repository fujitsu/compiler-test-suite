program pro
implicit none
interface
  subroutine sub(n1,n2,x)
    integer :: n1(2,2)
    integer :: n2(2,2)
    real, optional :: x(2,2)
  end subroutine sub
end interface
integer, allocatable :: n1(:,:)
integer, allocatable :: n2(:,:)
real, allocatable :: x1(:,:)
allocate(n1(2,2),n2(2,2),x1(2,2))
n1= 1
n2= 2
x1= 1.4
call sub(n1,n2,x1)
end

subroutine sub(n1,n2,x)
  implicit none
  integer :: n1(2,2)
  integer :: n2(2,2)
  real, optional :: x(2,2)
  real :: y(2)

y=BESSEL_JN(n1=n1(2,1),n2=n2(1,2),x=x(1,2))
        if( .not.(y(1)>0.53 .and. y(1)<0.55))  print *,101
        if( .not.(y(2)>0.19 .and. y(2)<0.21))  print *,102
    print*,"Pass"
end subroutine sub
