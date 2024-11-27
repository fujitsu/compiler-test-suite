program main
integer,parameter :: N=2000
real(kind=4),dimension(1:N,1:N) :: a,b,c
integer,dimension(1:N,1:N) :: iii

a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
c = transpose(a)
do j=1,N
  do i=1,N
    b(i,j) = c(j,i)
  enddo
enddo
where (a==b)
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
