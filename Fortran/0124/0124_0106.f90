program main
integer,parameter :: n=100
real(kind=8),dimension(1:n) :: a
real(kind=8) r

do i=1,n
  a(i) = real(i, kind=8)/1000._8
enddo

do i=1,n-1
  a(n) = a(n) + a(i)
enddo

r = 0.
do i=1,n
  r = r + a(i)
enddo


if (r .ge. 9.98 .and. r .le. 10.1) then
  print *,"ok"
else
  print *,"ng", r
endif

end program
