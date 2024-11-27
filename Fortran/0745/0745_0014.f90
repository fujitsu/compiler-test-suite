program main
integer,parameter :: N=300
integer,parameter :: M=100
real(kind=4),dimension(1:N,1:N) :: a
real(kind=4),dimension(1:M,1:M) :: c,dum,b
integer,dimension(1:M,1:M) :: iii

a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
a(2:M+1,1:M) = transpose(a(1:M,1:M))
c = a(2:M+1,1:M)
a = reshape((/(real(i,kind=4)/real(4,kind=4),i=1,N*N)/),(/N,N/))
do j=1,M
  do i=1,M
    dum(i,j) = a(j,i)
  enddo
enddo
do j=1,M
  do i=1,M
    a(i+1,j) = dum(i,j)
  enddo
enddo
b = a(2:M+1,1:M)
where (b==c)
  iii = 1
elsewhere
  iii = 0
endwhere
if (sum(iii) == M*M) then
  print *,"pass"
else
  print *,"ng"
endif
end
