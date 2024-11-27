program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N*N)/),(/N,N,N/))
print *,"start"
a(2,8:10,8:10) = a(2,8:6:-1,11:9:-1)
if (a(2,8,9) - a(2,8,10) == 10000) then
  print *,"ok"
else
  print *,"ng",a(2,8,9)-a(2,8,10)
endif
print *,"end"
end program
