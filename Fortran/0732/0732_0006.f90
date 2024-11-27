program main
implicit none

  integer  ::  i, st
  integer, parameter        :: dp = selected_real_kind(10)
  type Smatrix
     integer                :: ne
     integer      , pointer :: i(:),j(:)
     real(kind=dp), pointer :: z(:)
  end type Smatrix

  integer,parameter         :: n = 10
  real(kind=dp),allocatable :: x(:)
  type(Smatrix)             :: H

  allocate(H%i(n),H%j(n),H%z(n), stat=st)
  write(1,*) "stat H: ", st
  allocate( x(n), stat=st )
  write(1,*) "stat X: ", st

  x = (/ (real(i),i=1,n) /)
  H = Heval(x)

  write(1,*) "I: ", associated(H%I)
  write(1,*) "J: ", associated(H%J)
  write(1,*) "Z: ", associated(H%Z)
  write(1,*) "X: ", allocated( X )
  if (.not.associated(H%I))write(6,*) "NG"
  if (.not.associated(H%J))write(6,*) "NG"
  if (.not.associated(H%Z))write(6,*) "NG"
  if (.not.allocated( X ))write(6,*) "NG"
  deallocate( x, stat=st)
  write(1,*) "stat X: ", st
  deallocate(H%i,H%j,H%z, stat=st)
  write(1,*) "stat H: ", st
  print *,'pass'

contains

  function Heval(x) result(H)
    type(Smatrix)  :: H
    real(kind=dp)  :: x(:)
    integer :: i, n

    n  = Size(x)
    H%ne = n
  allocate(H%i(n),H%j(n),H%z(n))
    H%i=(/(i,i=1,n)/)
    H%j=(/(i,i=1,n)/)
    H%z=x

    return
  end function Heval
end program main
