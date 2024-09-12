subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub2(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = b(i,j)
   enddo
enddo
end subroutine

subroutine sub3(a,b,n)
real(8),dimension(1:n,1:n,1:n) :: a,b

do k=1,n
do j=1,n
   do i=1,n
      a(i,j,k) = b(i,j,k)
   enddo
enddo
enddo
end subroutine

subroutine sub4(a,b,n)
real(8),dimension(1:n,1:n,1:n,1:n,1:n) :: a,b

do m=1,n
do l=1,n
do k=1,n
do j=1,n
do i=1,n
   a(i,j,k,l,m) = b(i,j,k,l,m)
enddo
enddo
enddo
enddo
enddo

end subroutine

subroutine sub5(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo

end subroutine

subroutine sub6(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = b(i,j)
   enddo
enddo

end subroutine

subroutine sub7(a,b,n)
real(8),dimension(1:n,1:n,1:n) :: a,b

do k=1,n
do j=1,n
   do i=1,n
      a(i,j,k) = b(i,j,k)
   enddo
enddo
enddo

end subroutine

subroutine sub8(a,b,n)
real(8),dimension(1:n,1:n,1:n,1:n,1:n) :: a,b

do m=1,n
do l=1,n
do k=1,n
do j=1,n
do i=1,n
   a(i,j,k,l,m) = b(i,j,k,l,m)
enddo
enddo
enddo
enddo
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians1=20
integer,parameter :: ians2=200
integer,parameter :: ians3=2000
integer,parameter :: ians5=200000
real(8),dimension(1:n) :: a1,b1
real(8),dimension(1:n,1:n) :: a2,b2
real(8),dimension(1:n,1:n,1:n) :: a3,b3
real(8),dimension(1:n,1:n,1:n,1:n,1:n) :: a5,b5

a1 = 1.
b1 = 2.
a2 = 1.
b2 = 2.
a3 = 1.
b3 = 2.
a5 = 1.
b5 = 2.

call sub1(a1,b1,n)
call sub5(a1,b1,n)
if (int(sum(a1)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a1)", int(sum(a1)), ians1
endif

call sub2(a2,b2,n)
call sub6(a2,b2,n)
if (int(sum(a2)) .eq. ians2) then
  print *,"ok"
else
  print *,"ng(a2)", int(sum(a2)), ians2
endif

call sub3(a3,b3,n)
call sub7(a3,b3,n)
if (int(sum(a3)) .eq. ians3) then
  print *,"ok"
else
  print *,"ng(a3)", int(sum(a3)), ians3
endif

call sub4(a5,b5,n)
call sub8(a5,b5,n)
if (int(sum(a5)) .eq. ians5) then
  print *,"ok"
else
  print *,"ng(a5)", int(sum(a5)), ians5
endif

end program
