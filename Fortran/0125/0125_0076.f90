subroutine sub1(a1,b,c1,c2,c3,n)
  real(8), dimension(1:n,1:n) :: a1,a2
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3

  do i1=1,n
  do i2=1,n
     a2(i2,i1) = b(1,c1(c2(i2))) + b(2,c1(c2(i2))) + b(3,c1(c2(i2))) 
     a1(i2,i1) = a2(i2,i1) + b(1,c2(c1(i2))) + b(1,c1(c3(i2))) + b(1,c3(c2(i2))) 
  enddo
  enddo

end subroutine sub1

subroutine init(a,b,c1,c2,c3,n)
  real(8), dimension(1:n,1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3

  do i=1,n
     do j=1,10
        b(j,i) = j
        a(j,i) = 0.
     enddo
     c1(i) = i
     c2(i) = i
     c3(i) = i
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=90000
  real(8), dimension(1:n,1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3

  call init(a,b,c1,c2,c3,n)
  call sub1(a,b,c1,c2,c3,n)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
