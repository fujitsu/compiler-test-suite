program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
do i=1,10
  a(i,1:10) = a(1:10, i)
enddo
if ((a(1,1) < a(1,2)).and.(a(1,2) == a(2,1)).and.(a(2,1) < a(2,2))) then
  print *,"ok"
else
  print *,"ng",a(1,1),a(1,2),a(2,1),a(2,2)
endif
print *,"end"
end program