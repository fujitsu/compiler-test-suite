subroutine sub(a,n)
real(8),dimension(1:n+3) :: a

do i=1,n,3
  a(i) = 1.
  a(i+1) = 2.
  a(i+2) = 3.
enddo
end subroutine

program main
integer,parameter :: ians=404
integer,parameter :: n=200
real(8),dimension(1:n+3) :: a
data a/203*0/

a = 1.
call sub(a,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
