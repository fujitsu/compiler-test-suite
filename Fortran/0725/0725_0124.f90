integer,parameter ::N=100
integer,dimension(1:N,1:N) :: a,b
a = reshape((/(i,i=1,N*N)/),(/N,N/))
b = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
a(2:11, 1:10) = transpose(transpose(transpose(transpose(a(1:10,1:10)+b(2:11,2:11)))))
if ((a(1,1) < a(1,2)).and.(a(1,2) < a(2,1)).and.(a(2,1) < a(2,2))) then
  print *,"ok"
else
  print *,"ng",a(1,1),a(1,2),a(2,1),a(2,2)
endif
print *,"end"
end
