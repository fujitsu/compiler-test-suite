program main
integer a(1024), count

  a = 0
!$omp parallel do schedule(runtime)
  do i=1, 1024
    a(i) = a(i)+1
  end do
!$omp end parallel do

  do i=1, 1024
    if(a(i) .ne. 1) count = count+1
  end do

  count = 0
  if(count .ne. 0) then
    print *, 'NG'
  else 
    print *, 'ok'
  end if
end
