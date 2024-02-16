program main
integer,parameter :: n=100
real(kind=8),dimension(1:n) :: a
real(kind=8) r
equivalence(r,a(1))

do i=1,n
  a(i) = real(i, kind=8)/1000._8
enddo

r = 0._8
do i=1,n
  r = r + a(i)
enddo

if (r .ge. 5.04 .and. r .le. 5.06) then
  print *,"ok"
else
  print *,"ng", r
endif

end program
