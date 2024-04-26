subroutine sub(n, a)
  integer :: n
  real,dimension(1000) :: a
  real :: b
  integer :: i

  do i=1,n
     b = a(i)

     if (b > 0.0) then
        a(i) = 2.0 * a(i)
     end if

  end do
end subroutine sub

program main

  integer :: n
  real,dimension(1000) :: a
  n=1000

  do i=1,1000
     a(i) = i-500
  end do

  call sub(n,a)

  print *,"sum(a)=",sum(a)

end program main
