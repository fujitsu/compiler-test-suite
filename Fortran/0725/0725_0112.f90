program main
integer,parameter :: N=300
integer,parameter :: M=100
real(kind=4),dimension(1:N,1:N) :: a
real(kind=4),dimension(1:M,1:M) :: c,b
integer,dimension(1:M,1:M) :: iii

a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
c = transpose(a(1:M,1:M))
do j=1,M
  do i=1,M
    b(i,j) = c(j,i)
  enddo
enddo
where (b==a(1:M,1:M))
  iii = 1
elsewhere
  iii = 0
endwhere
if (sum(iii) == M*M) then
  print *,"ok"
else
  print *,"ng"
endif
end
