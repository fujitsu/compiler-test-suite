character*32:: sum
integer      err
character*32,dimension(256):: a

!$omp parallel do private(sum)
  do i=1, 256
    write(sum, *) i
    call sub(a(i), sum)
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

subroutine sub(i, j)
character*32:: i, j

i = ' test: '//j
end
