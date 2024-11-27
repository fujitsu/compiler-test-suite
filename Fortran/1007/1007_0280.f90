type xxx
  integer,pointer:: a(:), b(:), c(:)
end type
type yyy
  integer,pointer:: pa(:), pb(:), pc(:)
end type
type(xxx) x
type(yyy) y
integer err

allocate(x%a(256))
allocate(x%b(256))
allocate(x%c(256))
x%c = 0
y%pa => x%a
y%pb => x%b
y%pc => x%c

!$omp parallel do
do ii=1, 256
  y%pa(ii) = ii
  y%pb(ii) = ii*(ii+1)/2
  y%pc(ii) = y%pc(ii)-y%pa(ii)+y%pb(ii)+ii
end do
!$omp end parallel do

err = 0
do i=1, 256
  if(x%c(i) .ne. i*(i+1)/2) err = err+1
  if(x%b(i) .ne. i*(i+1)/2) err = err+1
  if(x%a(i) .ne. i) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

deallocate(x%a)
deallocate(x%b)
deallocate(x%c)
end

