program main
integer,parameter :: N=300
real(kind=4),dimension(1:N,1:N) :: a,b,c,d
integer,dimension(1:N,1:N) :: iii

a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
b = reshape((/(real(i,kind=4)/real(8,kind=4),i=1,N*N)/),(/N,N/))
c = transpose(a+b)
d = a+b
do j=1,N
  do i=1,N
    b(i,j) = c(j,i)
  enddo
enddo
where (b==d)
  iii = 1
elsewhere
  iii = 0
endwhere
if (sum(iii) == N*N) then
  print *,"ok"
else
  print *,"ng"
endif
end
