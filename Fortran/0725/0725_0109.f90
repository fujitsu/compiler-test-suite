program main
integer ans
integer res
integer transpose1
ans = transpose1(1)
res = 1
do i=1,9
  ans = ans + transpose1(i*10)
  res = res + 1
enddo
do i=10,100,10
  ans = ans + transpose1(i*10)
  res = res + 1
enddo
if (ans==res) then
  print *,"ok : check transpose(array(kind=4))"
else
  print *,"ng : check transpose(array(kind=4))"
endif
end

integer function transpose1(N)
integer N
integer(kind=8),dimension(1:N,1:N) :: a,b,c
integer,dimension(1:N,1:N) :: iii

a = reshape((/(int(i,kind=8)/int(4,kind=8),i=1,N*N)/),(/N,N/))
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
  transpose1 = 1
else
  transpose1 = 0
endif
end function
