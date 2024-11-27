program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N*N)/),(/N,N,N/))
print *,"start"
a(:,:,4) = transpose(a(2,:, :))
if (a(2,2,4) == a(2,2,2)) then
  print *,"ok"
else
  print *,"ng",a(2,2,4)
endif
print *,"end"
end program

