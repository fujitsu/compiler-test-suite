module mod
  real(kind=8),dimension(1000,1000) :: a,b
contains
  subroutine foo(n)
    do concurrent(j=1:n)
!ocl noalias
!ocl norecurrence
       do i=1,n
          a(i,j) = a(i,j) + b(i,j)
       enddo
    enddo
  end subroutine foo
end module mod

program main
  use mod
  a = 1
  b = 2
  call foo(1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
!
! no diff
