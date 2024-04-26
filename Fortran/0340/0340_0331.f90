subroutine sub(n, b,a)
  integer :: n,b
  real,dimension(1000) :: a

  integer :: i

  do i=1,n
     a(i) = b

     if (a(i) > 0.0) then
        b = b + 1
        a(i) = 2.0 * b
     end if

  end do
end subroutine sub

program main

  integer :: n,b
  real,dimension(1000) :: a
  n=1000
  b=100

  do i=1,1000
     a(i) = i-500
  end do

  call sub(n,b,a)

  print *,"sum(a)=",sum(a)

end program main
