character*32:: sum
integer      err
character*32,dimension(256):: a

!$omp parallel do private(sum)
  do i=1, 256
    write(sum, *) i
    a(i) = ' test: '//sum
  end do
!$omp end parallel do

  err = 0
  do i=1, 256
    write(sum, *) 'test: ',i
    if(a(i) .ne. sum) err = err+1
  end do

  if(err .ne. 0) then
    print *, 'NG'
  else
    print *, 'pass'
  endif

end

