integer,dimension(256):: a, b, c, d
integer err

a = (/(i,i=1,256)/)
b = (/(i*(i+1)/2,i=1,256)/)
c = 0
d = 0

!$omp parallel do firstprivate(a, b)
do ii=2, 255
  c(ii) = (a(ii-1)+a(ii)+a(ii+1))/3
  d(ii) = ii+b(ii)-a(ii)
end do

err = 0
if(c(1) .ne. 0) err = err+1
if(c(256) .ne. 0) err = err+1
if(d(1) .ne. 0) err = err+1
if(c(256) .ne. 0) err = err+1
do i=2, 255
  if(c(i) .ne. a(i)) err = err+1
  if(d(i) .ne. b(i)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else 
  print *, 'pass'
endif

end

