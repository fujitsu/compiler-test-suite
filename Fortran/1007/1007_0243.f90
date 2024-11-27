complex*16:: sum
integer      err
complex*16,dimension(256):: a

!$omp parallel do private(sum)
  do i=1, 256
    sum = cmplx((i*(i+1))/2, real(i))
    a(i) = sum
  end do
!$omp end parallel do

  err = 0
  do i=1, 256
    if(a(i) .ne. cmplx((i*(i+1))/2, real(i))) err = err+1
  end do

  if(err .ne. 0) then
    print *, 'NG'
  else
    print *, 'pass'
  endif

end

