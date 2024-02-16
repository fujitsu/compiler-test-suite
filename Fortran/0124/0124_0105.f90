program main
integer,parameter :: n=100
real(kind=8),dimension(1:n) :: a

do i=1,n
  a(i) = real(i, kind=8)/1000._8
enddo

!
do i=1,n
  a(n) = a(n) + a(i)
enddo

if (a(n) .ge. 10.09 .and. a(n) .le. 10.11) then
  print *,"ok"
else
  print *,"ng", a(n)
endif

end program
