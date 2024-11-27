program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
a = transpose(a)
if (a(8,2) == 702) then
  print *,"ok"
else
  print *,"ng",a(8,2)
endif
print *,"end"
end program

