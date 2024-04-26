program main
  real(8),dimension(1:100) :: a1,b1
  real(8),dimension(1:100) :: a2,b2
  real(8),dimension(1:100) :: a3,b3
  real(8),dimension(1:100) :: a4,b4
  real(8),dimension(1:100) :: a5,b5
  real(8),dimension(1:100) :: a6,b6

  call init(a1,b1,3)
  call init(a2,b2,4)
  call init(a3,b3,5)
  call init(a4,b4,16)
  call init(a5,b5,17)
  call init(a6,b6,100)

  call sub1(a1,b1,100)
  call sub2(a2,b2,100)
  call sub3(a3,b3,100)
  call sub4(a4,b4,100)
  call sub5(a5,b5,100)
  call sub6(a6,b6,100)
  
  call check(a1,b1,100)
  call check(a2,b2,100)
  call check(a3,b3,100)
  call check(a4,b4,100)
  call check(a5,b5,100)
  call check(a6,b6,100)

  print *, "OK"
end program main

subroutine init(a,b,n)
  real(8),dimension(1:100) :: a,b

  do i=1,100
     a(i) = 0
     b(i) = 0
  enddo
  do i=1,n
     b(i) = i
  enddo
end subroutine init

subroutine check(a,b,n)
  real(8),dimension(1:100) :: a,b
  do i=1,n
     if(a(i) .ne. b(i)) then
        print *, "NG"
     endif
  enddo
end subroutine check

subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,3
   a(i) = b(i)
enddo
end subroutine sub1

subroutine sub2(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,4
   a(i) = b(i)
enddo
end subroutine sub2

subroutine sub3(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,5
   a(i) = b(i)
enddo
end subroutine sub3

subroutine sub4(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,16
   a(i) = b(i)
enddo
end subroutine sub4

subroutine sub5(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,17
   a(i) = b(i)
enddo
end subroutine sub5

subroutine sub6(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo
end subroutine sub6
