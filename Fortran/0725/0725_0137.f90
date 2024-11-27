program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
a(2:11,2:11) = a(1:10,2:11)
if ((a(2,2)-a(1,1)) == (a(10,2)-a(9,2))*100) then
  print *,"ok"
else
  print *,"ng",a(2,2),a(1,1),a(10,2),a(9,2)
endif
print *,"end"
end program
