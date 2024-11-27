integer,parameter ::N=100
integer,dimension(1:N,1:N) :: a,b
a = reshape((/(mod(i,10),i=1,N*N)/),(/N,N/))
b = reshape((/(mod(i,10),i=1,N*N)/),(/N,N/))
print *,"start"
a = transpose(transpose(a + transpose(a(1:100,1:100)) + matmul(a,b)))
if ((a(1,1) < a(1,2)).and.(a(1,2) < a(2,1)).and.(a(2,1) < a(2,2))) then
  print *,"ok"
else
  print *,"ng",a(1,1),a(1,2),a(2,1),a(2,2)
endif
print *,"end"
end
