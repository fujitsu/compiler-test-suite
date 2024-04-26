subroutine sub(a,b,c,n)
real(8),dimension(1:n) :: a,b,c

do i=1,n
   a(i) = a(i) + b(i) + c(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=6000
real(8),dimension(1:n) :: a,b,c

a = 1.
b = 2.
c = 3.
call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
