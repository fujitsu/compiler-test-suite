integer,dimension(256),target:: a, b, c
integer,pointer:: pa(:), pb(:), pc(:)
integer err

c = 0
pa => a
pb => b
pc => c

!$omp parallel do
do ii=1, 256
  pa(ii) = ii
  pb(ii) = ii*(ii+1)/2
  pc(ii) = pc(ii)-pa(ii)+pb(ii)+ii
end do
!$omp end parallel do

err = 0
do i=1, 256
  if(c(i) .ne. i*(i+1)/2) err = err+1
  if(b(i) .ne. i*(i+1)/2) err = err+1
  if(a(i) .ne. i) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

