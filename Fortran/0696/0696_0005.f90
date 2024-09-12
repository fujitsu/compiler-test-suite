subroutine sub1(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = b(i,j)
   enddo
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

subroutine sub3(a,b,n,m)
real(8),dimension(1:n,1:n) :: a,b
logical :: m

do j=1,n
   do i=1,n
      a(i,j) = b(i,j)
   enddo

   if (m) then
      do i=1,n
         a(i,j) = b(j,i)
      enddo
   endif
enddo

end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians1=10000
real(8),dimension(1:n,1:n) :: a,b

a = 0.
b = 1.

call sub1(a,b,n)
call sub2(a,b,n)
call sub3(a,b,n,.TRUE.)
if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program
