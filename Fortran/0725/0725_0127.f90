integer,parameter ::N=100
integer,dimension(1:N,1:N) :: a,b
a = reshape((/(mod(i,2),i=1,N*N)/),(/N,N/))
b = reshape((/(mod(i,3),i=1,N*N)/),(/N,N/))
print *,"start"
a = transpose(transpose(transpose(b)))
if ((a(1,1)==1).and.(a(1,2)==2).and.(a(2,1)==2).and.(a(2,2)==0)) then
  print *,"ok"
else
  print *,"ng",a(1,1),a(1,2),a(2,1),a(2,2)
endif
print *,"end"
end
