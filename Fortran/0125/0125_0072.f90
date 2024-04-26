subroutine sub1(a,b,c1,c2,c3,n)
  real(8), dimension(1:n) :: a,x1,x2
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3

  do i=1,n
     x1(i) = b(1,c1(i)) + b(81,c2(i)) + b(161,c3(i)) 
     x2(i) = x1(i) + b(2,c1(i)) + b(80,c2(i)) + b(160,c3(i)) 
     a(i) = x2(i) + b(3,c1(i)) + b(79,c2(i)) + b(163,c3(i)) 
  enddo

end subroutine sub1

subroutine init(a,b,c1,c2,c3,n)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3

  do i=1,n
     do j=1,200
        b(j,i) = j
     enddo
     a(i) = 0.
     c1(i) = i
     c2(i) = i
     c3(i) = i
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=73000
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3

  call init(a,b,c1,c2,c3,n)
  call sub1(a,b,c1,c2,c3,n)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
