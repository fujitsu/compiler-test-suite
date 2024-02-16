subroutine sub(a,b,c,d,n)
real(8),dimension(1:n) :: a,b,c,d

do i=1,n
  a(i) = b(i) + c(i) + d(i)
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=3000
real(8),dimension(1:n) :: a,b,c,d
a = 1.
b = 1.
c = 1.
d = 1.
call sub(a,b,c,d,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
