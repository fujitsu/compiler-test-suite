integer,dimension(32768):: a, b
common /blk/ a, b
integer err

b = (/(i,i=1,32768)/)

!$omp parallel do
do ii=1, 32768
   call sub2(ii)
end do
!$omp end parallel do

do ii=1, 32768
  call sub(ii)
end do

err = 0
do i=1, 32768
  if(a(i) .ne. b(i)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

subroutine sub(i)
integer,dimension(32768):: a, b
common /blk/ a, b

if(mod(i,4) .eq. 0) then
  b(i) = b(i)+1
else if(mod(i,4) .eq. 1) then
  b(i) = b(i)+2
else if(mod(i,4) .eq. 2) then
  b(i) = b(i)+3
else
  b(i) = b(i)+4
endif

end

subroutine sub2(i)
integer,dimension(32768):: a, b
common /blk/ a, b

if(mod(i,4) .eq. 0) then
  a(i) = b(i)+1
else if(mod(i,4) .eq. 1) then
  a(i) = b(i)+2
else if(mod(i,4) .eq. 2) then
  a(i) = b(i)+3
else
  a(i) = b(i)+4
endif

end

