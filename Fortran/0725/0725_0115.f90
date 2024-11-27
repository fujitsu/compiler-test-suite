program main
integer,parameter :: N=300
integer,parameter :: M=100
real(kind=4),dimension(1:N,1:N) :: a
real(kind=4),dimension(1:M,1:M) :: c,d,dum,b
integer,dimension(1:M,1:M) :: iii

a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
b = reshape((/(real(i,kind=4)/real(8,kind=4),i=1,M*M)/),(/M,M/))
a(5:M+4,2:M+1) = transpose(a(2:M+1,1:M)+a(1:M,3:M+2)-b(:,:))
c = a(2:M+1,2:M+1)
a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
b = reshape((/(real(i,kind=4)/real(8,kind=4),i=1,M*M)/),(/M,M/))
do j=1,M
  do i=1,M
    dum(i,j) = a(j+1,i)+a(j,i+2)-b(j,i)
  enddo
enddo
do j=1,M
  do i=1,M
    a(i+4,j+1) = dum(i,j)
  enddo
enddo
d = a(2:M+1,2:M+1)
where (c==d)
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
