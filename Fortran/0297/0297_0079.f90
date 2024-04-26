subroutine test1(a,b,m1,m2,n)
integer n,i,j
real(8),dimension(1:n,1:n) :: a,b
real(8) :: m1,m2
do j=1,n
   do i=1,n
      if (m1.gt.0._8) then
         if (m2.gt.0._8) then
            a(i,j) = a(i,j) + b(i,j)
         endif
      endif
   enddo
enddo
end subroutine

subroutine test2(a,b,m1,m2,n)
integer n,i,j
real(8),dimension(1:n,1:n) :: a,b
real(8) :: m1,m2
do j=1,n
   do i=1,n
      if (m1.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.1
      endif
      if (m2.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.2
      endif
   enddo
enddo
end subroutine

subroutine test3(a,b,m1,m2,m3,m4,m5,n)
integer n,i,j
real(8),dimension(1:n,1:n) :: a,b
real(8) :: m1,m2,m3,m4,m5
do j=1,n
   do i=1,n
      if (m1.gt.0._8) then
         if (m2.gt.0._8) then
            if (m3.gt.0._8) then
               if (m4.gt.0._8) then
                  if (m5.gt.0._8) then
                     a(i,j) = a(i,j) + b(i,j)
                  endif
               endif
            endif
         endif
      endif
   enddo
enddo
end subroutine

subroutine test4(a,b,m1,m2,m3,m4,m5,n)
integer n,i,j
real(8),dimension(1:n,1:n) :: a,b
real(8) :: m1,m2,m3,m4,m5
do j=1,n
   do i=1,n
      if (m1.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.1
      endif
      if (m2.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.2
      endif
      if (m3.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.3
      endif
      if (m4.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.4
      endif
      if (m5.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)*0.5
      endif
   enddo
enddo
end subroutine

subroutine init(a,b,m1,m2,m3,m4,m5,n)
real(8),dimension(1:n,1:n) :: a,b
real(8) :: m1,m2,m3,m4,m5
a = 0.0_8
b = reshape((/(real(i,kind=8),i=1,n*n)/), (/n,n/))
m1 = 1.0_8
m2 = 1.0_8
m3 = 1.0_8
m4 = 1.0_8
m5 = 1.0_8
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n,1:n) :: a,b
real(8) :: m1,m2,m3,m4,m5
real(8),parameter :: ans1=50005000.00000000_8
real(8),parameter :: ans2=15001500.22353977_8
real(8),parameter :: ans3=50005000.00000000_8
real(8),parameter :: ans4=75007501.11770084_8
real(8),parameter :: error=0.0001_8
logical ok

call init(a,b,m1,m2,m3,m4,m5,n)
call test1(a,b,m1,m2,n)
if (abs(sum(a) - ans1) .le. error) then
  ok = .true.
else
  ok = .false.
  print *,"test1: ng", sum(a), ans1
endif

call init(a,b,m1,m2,m3,m4,m5,n)
call test2(a,b,m1,m2,n)
if (abs(sum(a) - ans2) .le. error) then
  ok = .true.
else
  ok = .false.
  print *,"test2: ng", sum(a), ans2
endif

call init(a,b,m1,m2,m3,m4,m5,n)
call test3(a,b,m1,m2,m3,m4,m5,n)
if (abs(sum(a) - ans3) .le. error) then
  ok = .true.
else
  ok = .false.
  print *,"test3: ng", sum(a), ans3
endif

call init(a,b,m1,m2,m3,m4,m5,n)
call test4(a,b,m1,m2,m3,m4,m5,n)
if (abs(sum(a) - ans4) .le. error) then
  ok = .true.
else
  ok = .false.
  print *,"test4: ng", sum(a), ans4
endif

if (ok) then
  print *,"ok"
endif
end program
