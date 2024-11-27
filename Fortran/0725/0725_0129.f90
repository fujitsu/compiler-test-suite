program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N*N)/),(/N,N,N/))
print *,"start"
a(2,8:10,8:10) = a(2,2:4:1,2:4)
if (a(2,3,4) - a(2,8,9)  == 10100) then
  print *,"ok"
else
  print *,"ng",a(2,3,4)-a(2,8,9)
endif
print *,"end"
end program
