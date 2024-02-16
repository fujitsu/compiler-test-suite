subroutine sub1(a,b,c1,c2,c3,n)
  real(8), dimension(1:n) :: a,x1,x2,x3,x4,x5
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3
  do i=10,n-10
     x1(i) =         b(1, c1(i)  ) + b(20,c2(i)) + b(50 ,c3(i)-2) 
     x2(i) = x1(i) + b(2, c1(i)  ) + b(60,c2(i)) + b(50 ,c3(i)-3) 
     x3(i) = x2(i) + b(3, c1(i)  ) + b(55,c2(i)) + b(50 ,c3(i)-4) 
     x4(i) = x3(i) + b(1, c1(i)+2) + b(33,c2(i)) + b(50 ,c3(i)-5) 
     x5(i) = x4(i) + b(2, c1(i)+2) + b(1 ,c2(i)) + b(50 ,c3(i)-6) 
     a(i)  = x5(i) + b(3, c1(i)+2) + b(21,c2(i)) + b(50 ,c3(i)-7) 
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
  integer,parameter :: ans=40662
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

