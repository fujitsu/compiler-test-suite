program main

  implicit none

  type :: couple
      integer, pointer, dimension(:) :: one, two
  end type couple

  type(couple) :: A
  integer      :: Asum

  allocate( A%one(10) )
  allocate( A%two(10) )
  A%one = 1
  A%two = 2

  Asum = Vfoo( A )
  if (Asum/=20)write(6,*) "NG"
  print *,'pass'

contains

  function Vfoo(A) result(Vfoo_out)
    type(couple), intent(in) :: A
    integer                  :: Vfoo_out

    Vfoo_out=sum(A%one*A%two)
    return

  end function Vfoo

end program main
