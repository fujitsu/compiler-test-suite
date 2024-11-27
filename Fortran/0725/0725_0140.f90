program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N*N)/),(/N,N,N/))
print *,"start"
a(1,2:11,2:11) = a(1:10,2,2:11)
if (a(5,2,6)-a(5,2,4)==20000) then
  print *,"ok"
else
  print *,"ng",a(5,2,6),a(5,2,4)
endif
print *,"end"
end program
