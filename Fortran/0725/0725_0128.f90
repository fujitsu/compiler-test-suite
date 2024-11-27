program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N*N)/),(/N,N,N/))
print *,"start"
a(:,:,4) = a(2,:, :)
if (a(2,3,4) - a(4,3,2) == 9898) then
  print *,"ok"
else
  print *,"ng",a(2,3,4)-a(4,3,2)
endif
print *,"end"
end program
