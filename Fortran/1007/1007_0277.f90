integer,dimension(256):: a, b, c
integer err

c = 0

!$omp parallel do
do ii=1, 256
  call sub(ii, a(ii), b(ii), c(ii))
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


subroutine sub(i, a, b, c)
integer i, a, b, c

a = i
b = i*(i+1)/2
c = c-a+b+i
end
