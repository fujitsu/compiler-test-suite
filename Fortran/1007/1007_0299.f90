integer,dimension(32768):: a, b
integer err

a = (/(i,i=1,32768)/)
b = (/(i,i=1,32768)/)

!$omp parallel do
do ii=1, 32768
  call sub(a, ii)
end do
!$omp end parallel do

do ii=1, 32768
  call sub(b, ii)
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

subroutine sub(a, ii)
integer,dimension(32768):: a
integer ii

if(mod(ii,4) .eq. 0) then
  a(ii) = a(ii)+ii
else if(mod(ii,4) .eq. 1) then
  a(ii) = a(ii)+1
else if(mod(ii,4) .eq. 2) then
  a(ii) = a(ii)+2
else
  a(ii) = a(ii)+3
endif

end

