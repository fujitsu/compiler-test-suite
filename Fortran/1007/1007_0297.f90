integer,dimension(256):: a, b
integer err

a = (/(i,i=1,256)/)
b = (/(i,i=1,256)/)

!$omp parallel do
do ii=1, 256
  if(mod(ii,4) .eq. 0) then
    a(ii) = a(ii)+ii
  else if(mod(ii,4) .eq. 1) then
    a(ii) = a(ii)+1
  else if(mod(ii,4) .eq. 2) then
    a(ii) = a(ii)+2
  else
    a(ii) = a(ii)+3
  endif
end do
!$omp end parallel do

do ii=1, 256
  if(mod(ii,4) .eq. 0) then
    b(ii) = b(ii)+ii
  else if(mod(ii,4) .eq. 1) then
    b(ii) = b(ii)+1
  else if(mod(ii,4) .eq. 2) then
    b(ii) = b(ii)+2
  else
    b(ii) = b(ii)+3
  endif
end do

err = 0
do i=1, 256
  if(a(i) .ne. b(i)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

