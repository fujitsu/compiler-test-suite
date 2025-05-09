real*16:: sum
integer   err
real*16,dimension(256):: a

!$omp parallel do private(sum)
  do i=1, 256
    call sub(sum, i)
    a(i) = sum
  end do
!$omp end parallel do

  err = 0
  do i=1, 256
    if(a(i) .ne. real((i*(i+1))/2)) err = err+1
  end do

  if(err .ne. 0) then
    print *, 'NG'
  else
    print *, 'pass'
  endif

end

subroutine sub(i, j)
real*16 i

i = real((j*(j+1))/2)
end
