program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N) :: a
a = reshape((/(i,i=1,N*N)/),(/N,N/))
print *,"start"
a(1:10,1:10) = a(10:1:-1,1:10)
if (((a(2,2)-a(1,1))==99).and.(a(10,2)-a(9,2))==-1) then
  print *,"ok"
else
  print *,"ng",a(2,2),a(1,1),a(10,2),a(9,2)
endif
print *,"end"
end program
