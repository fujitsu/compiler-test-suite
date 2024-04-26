subroutine sub1(a,b,c1,c2,c3,c12,c22,c32,c13,c23,c33,n)
  real(8), dimension(1:n) :: a,x1,x2
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3
  integer(8), dimension(1:n) :: c12,c22,c32
  integer(8), dimension(1:n) :: c13,c23,c33

  do i=1,n
     x1(i) = b(1,c1(c2(c3(i)))) + b(2,c1(c2(c3(i)))) + b(3,c1(c2(c3(i))))
     x2(i) = x1(i) + b(1,c12(c22(c32(i)))) + b(2,c12(c22(c32(i)))) + b(3,c12(c22(c32(i))))
     a(i) = x2(i) + b(1,c13(c23(c33(i)))) + b(2,c13(c23(c33(i)))) + b(3,c13(c23(c33(i))))
  enddo

end subroutine sub1

subroutine init(a,b,c1,c2,c3,c12,c22,c32,c13,c23,c33,n)
  real(8), dimension(1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3
  integer(8), dimension(1:n) :: c12,c22,c32
  integer(8), dimension(1:n) :: c13,c23,c33

  do i=1,n
     do j=1,10
        b(j,i) = j
     enddo
     a(i) = 0.
     c1(i) = i
     c2(i) = i
     c3(i) = i
     c12(i) = i
     c22(i) = i
     c32(i) = i
     c13(i) = i
     c23(i) = i
     c33(i) = i
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=1800
  real(8), dimension(1:n) :: a
  real(8), dimension(10,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3
  integer(8), dimension(1:n) :: c12,c22,c32
  integer(8), dimension(1:n) :: c13,c23,c33

  call init(a,b,c1,c2,c3,c12,c22,c32,c13,c23,c33,n)
  call sub1(a,b,c1,c2,c3,c12,c22,c32,c13,c23,c33,n)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
