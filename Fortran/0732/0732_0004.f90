program main

  type Smatrix
     integer              :: ne
     integer     ,pointer :: i(:),j(:)
     real(kind=8),pointer :: z(:)
  end type Smatrix

  integer,parameter        :: n=10
  real(kind=8),allocatable :: x(:)
  type(Smatrix)            :: H

  allocate(H%i(n),H%j(n),H%z(n),x(n))
  x=(/(real(i),i=1,n)/)
  H=Heval(x)
  if(any(H%i-(/1,2,3,4,5,6,7,8,9,10/)/=0))write(6,*) "NG"
  if(any(H%j-(/1,2,3,4,5,6,7,8,9,10/)/=0))write(6,*) "NG"
  if(any(abs(H%z-(/1,2,3,4,5,6,7,8,9,10/))>0.0001))write(6,*) "NG"
  deallocate(H%i,H%j,H%z,x)
  print *,'pass'

contains

  function Heval(x) result(H)
    type(Smatrix) :: H
    real(kind=8)  :: x(:)
    integer :: i,n

    n  =Size(x)
    allocate(H%i(n),H%j(n),H%z(n))
    H%i=(/(i,i=1,n)/)
    H%j=(/(i,i=1,n)/)
    H%z=x

    return
  end function Heval
end program main
