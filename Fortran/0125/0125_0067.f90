subroutine sub1(a,b,c,n)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c

  do i=1,n
     a(i) = b(10,c(i)) + b(2,c(i)) + b(64,c(i)) + b(65,c(i)) + b(20,c(i)) + b(25,c(i)) + b(88,c(i)) + b(89,c(i))
  enddo

end subroutine sub1

subroutine init(a,b,c,n)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c

  do i=1,n
     do j=1,200
        b(j,i) = j
     enddo
     a(i) = 0.
     c(i) = i
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=36300
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c

  call init(a,b,c,n)
  call sub1(a,b,c,n)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main

