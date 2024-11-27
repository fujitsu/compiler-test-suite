program main
integer,parameter :: N=100
integer,dimension(1:N, 1:N, 1:N) :: a
integer,dimension(1:N, 1:N) :: b
a = 1
b = 1
print *,"start"
b = transpose(a(2,:,:))
if (b(2,N-1) == 1) then
  print *,"ok"
else
  print *,"ng",b(2,N-1)
endif
print *,"end"
end program

