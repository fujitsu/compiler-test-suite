subroutine sub1(a,b,c,n)
  real(8), dimension(1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c

  do i=1,n
     a(i) = b(1,c(i)) + b(5,c(i)) + b(2,c(i)) + b(4,c(i)) + b(3,c(i))
  enddo

end subroutine sub1

subroutine init(a,b,c,n)
  real(8), dimension(1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c

  do i=1,n
     do j=1,10
        b(j,i) = j
     enddo
     a(i) = 0.
     c(i) = i
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=1500
  real(8), dimension(1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c

  call init(a,b,c,n)
  call sub1(a,b,c,n)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main

