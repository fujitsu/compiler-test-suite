program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N*N)/),(/N,N,N/))
print *,"start"
a(2,2:11,1:10) = transpose(a(2,1:10, 1:10))
if (a(2,11,10) - a(2,10,10) == 10000) then
  print *,"ok"
else
  print *,"ng",a(2,11,10),a(2,10,10)
endif
print *,"end"
end program

