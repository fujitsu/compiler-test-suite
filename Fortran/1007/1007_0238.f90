integer*8:: sum
integer     err
integer*8,dimension(256):: a

!$omp parallel do private(sum)
  do i=1, 256
    sum = (i*(i+1))/2
    a(i) = sum
  end do
!$omp end parallel do

  err = 0
  do i=1, 256
    if(a(i) .ne. (i*(i+1))/2) err = err+1
  end do

  if(err .ne. 0) then
    print *, 'NG'
  else
    print *, 'pass'
  endif

end

