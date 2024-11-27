integer,target,dimension(64)::a, b
integer,pointer:: c(:)
integer err

b = (/(i,i=1,64)/)
c => a

!$omp parallel do
do ii=1, 32
  c(ii:ii+32) = b(ii:ii+32)
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

