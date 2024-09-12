subroutine sub1(a,b,c,n)
real(8),dimension(1:n,1:n) :: a,b
real(8),dimension(1:n) :: c

do j=1,n
   c(j) = j
   do i=1,n
      a(i,j) = b(i,j) + c(j)
   enddo
enddo
end subroutine

subroutine sub2(a,b,c,n)
real(8),dimension(1:n,1:n) :: a,b
real(8),dimension(1:n) :: c

do j=1,n
   c(j) = j
   do i=1,n
      a(i,j) = b(i,j) + c(j)
   enddo
enddo

end subroutine

subroutine sub3(a,b,c,n)
real(8),dimension(1:n,1:n) :: a,b,c

do j=1,n
   do i=1,n
      a(i,j) = b(i,j)
   enddo
   do i=1,n
      a(i,j) = c(i,j)
   enddo
enddo
end subroutine

subroutine sub4(a,b,c,n)
real(8),dimension(1:n,1:n) :: a,b,c

do j=1,n
   do i=1,n
      a(i,j) = b(i,j)
   enddo
   do i=1,n
      a(i,j) = c(i,j)
   enddo
enddo

end subroutine

program main
integer,parameter :: n=20
integer,parameter :: ians1=5000
integer,parameter :: ians2=1200
real(8),dimension(1:n,1:n) :: a,b,a2,b2,c2
real(8),dimension(1:n) :: c

a = 0.
b = 2.
c = 0.
a2 = 0.
b2 = 2.
c2 = 3.

call sub1(a,b,c,n)
call sub2(a,b,c,n)
if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

call sub3(a2,b2,c2,n)
call sub4(a2,b2,c2,n)
if (int(sum(a2)) .eq. ians2) then
  print *,"ok"
else
  print *,"ng(a2)", int(sum(a2)), ians2
endif

end program
