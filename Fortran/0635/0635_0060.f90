real(8) function APR_create_lastprivate(a,n)
real(8),dimension(1:n) :: a
real(8) x
x = 0._8
do i=1,n
  x = a(i) + 1
enddo
APR_create_lastprivate = x
end function

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a
real(8) x
real(8) APR_create_lastprivate
a=1._8
x = APR_create_lastprivate(a,n)
if (int(x,kind=4) .eq. 2) then
  print *,"ok"
else
  print *,"ng"
endif
end program
