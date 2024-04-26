subroutine sub(a,b,c,d,n)
real(8),dimension(1:n,1:n) :: a,b
real(8),dimension(1:n) :: c,d

do i=1,n
   c(i) = c(i) + d(i)   
   do j=1,n
      a(j,i) = a(j,i) + b(j,i)
   enddo
enddo

end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians=10000
integer,parameter :: ians2=100
real(8),dimension(1:n,1:n) :: a,b
real(8),dimension(1:n) :: c,d

a = 0.
b = 1.
c = 0.
d = 1.

call sub(a,b,c,d,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
if (int(sum(c)) .eq. ians2) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians2
endif
end program
