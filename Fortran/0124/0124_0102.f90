program main
integer,parameter :: n=100
real(kind=8),dimension(1:n),target :: a
real(kind=8),pointer :: r

r => a(n)

do i=1,n
  a(i) = real(i, kind=8)/1000._8
enddo

r = 0._8
do i=1,n-1
  r = r + a(i)
enddo

if (r .ge. 4.94 .and. r .le. 4.96) then
  print *,"ok"
else
  print *,"ng", r
endif

end program
