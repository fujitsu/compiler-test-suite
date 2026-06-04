module mod
  contains
  subroutine foo(a,n)
    real(kind=8),dimension(:,:),allocatable :: a
    do concurrent(j=1:n)
       do concurrent(i=1:n)
          a(i,j) = a(i,j) + 3.
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  real(kind=8),dimension(:,:),allocatable :: a
  allocate(a(1000,1000))
  a = 0
  call foo(a,1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
