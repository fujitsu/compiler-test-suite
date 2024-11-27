integer,dimension(256):: a, b
integer sum
integer err

j1 = 0
j2 = 1
j3 = 2
j4 = 3

!$omp parallel do private(sum)
do i=1, 256
  if(mod(i,4) .eq. 0) then
    sum = j1
  else if(mod(i,4) .eq. 1) then
    sum = j2
  else if(mod(i,4) .eq. 2) then
    sum = j3
  else 
    sum = j4
  endif
  a(i) = sum+i
end do
!$omp end parallel do

do i=1, 256
  if(mod(i,4) .eq. 0) then
    sum = j1
  else if(mod(i,4) .eq. 1) then
    sum = j2
  else if(mod(i,4) .eq. 2) then
    sum = j3
  else
    sum = j4
  endif
  b(i) = sum+i
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

