integer,parameter ::N=100
integer,dimension(1:N,1:N) :: a
a = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
a = transpose(transpose(a))
if (a(1,2)-a(1,1) == a(2,2)-a(2,1)) then
  print *,"ok"
else
  print *,"ng",a(1,1),a(1,2),a(2,1),a(2,2)
endif
print *,"end"
end
