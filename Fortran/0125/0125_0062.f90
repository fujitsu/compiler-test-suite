subroutine init(a,n)
real(8),dimension(1:n) :: a

  do i=1,n
     a(i) = real(i,kind=8)
  enddo

end subroutine init

subroutine ans(a1,b1,n1,a2,b2,n2,a3,b3,n3)
real(8),dimension(1:n1) :: a1,b1
real(8),dimension(1:n2) :: a2,b2
real(8),dimension(1:n3) :: a3,b3

  do i=1,n1-40,40
     if (a1(i) .ne. b1(i)) then
        print *,"ng", ":b1"
     endif
  enddo

  do i=1,n2-40,40
     if (a2(i) .ne. b2(i)) then
        print *,"ng", ":b2"
     endif
  enddo

  do i=1,n3-40,40
     if (a3(i) .ne. b3(i)) then
        print *,"ng", ":b3"
     endif
  enddo

end subroutine ans


program main
integer,parameter :: n1=10000
integer,parameter :: n2=500
integer,parameter :: n3=1000
real(8),dimension(1:n1) :: a1,b1
real(8),dimension(1:n2) :: a2,b2
real(8),dimension(1:n3) :: a3,b3

call init(a1,n1)
call init(a2,n2)
call init(a3,n3)

do i=1,n1-40,40
   b1(i) = a1(i)
enddo

do i=1,n2-40,40
   b2(i) = a2(i)
enddo

do i=1,n3-40,40
   b3(i) = a3(i)
enddo

call ans(a1,b1,n1,a2,b2,n2,a3,b3,n3)

print *,"ok"

end program
