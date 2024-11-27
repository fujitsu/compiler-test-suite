integer,dimension(64)::a, b
integer err

b = (/(i,i=1,64)/)

!$omp parallel do
do ii=1, 32
  a(ii:ii+32) = b(ii:ii+32)
end do
!$omp end parallel do

err = 0
do i=1, 64
  if(a(i) .ne. i) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
end if

end

