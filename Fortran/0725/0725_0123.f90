integer,parameter ::N=100
integer,dimension(1:N,1:N) :: a
a = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
a(2:11, 1:10) = transpose(transpose(a(1:10,1:10)))
if ((a(2,10) == a(1,10)).and.(a(2,2)-a(2,1)==100)) then
  print *,"ok"
else
  print *,"ng",a(2,10),a(1,10),a(2,2),a(2,1)
endif
print *,"end"
end
