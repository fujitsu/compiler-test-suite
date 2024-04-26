subroutine sub1(a,b,c,n)
  real(4), dimension(1:n) :: a
  real(4), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c

  do i=1,n
     a(i) = b(80,c(i)) + b(1,c(i)) + b(160,c(i))
  enddo

end subroutine sub1

subroutine init(a,b,c,n)
  real(4), dimension(1:n) :: a
  real(4), dimension(200,1:n) :: b
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
  integer,parameter :: ans=24100
  real(4), dimension(1:n) :: a
  real(4), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c

  call init(a,b,c,n)
  call sub1(a,b,c,n)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
