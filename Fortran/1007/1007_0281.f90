complex*16,dimension(256,32):: a, b, c
integer err

!$omp parallel do
do ii=1, 256
  do j=1, 32
    a(ii,j) = cmplx(ii, j)
    b(ii,j) = cmplx(j,ii)
    c(ii,j) = a(ii,j)*b(ii,j)+cmplx(ii,ii)-cmplx(j,j)
  end do
end do
!$omp end parallel do

err = 0
do i=1, 256
  do j=1, 32
    if(a(i,j) .ne. cmplx(i,j)) err = err+1
    if(b(i,j) .ne. cmplx(j,i)) err = err+1
    if(c(i,j) .ne. (cmplx(i,j)*cmplx(j,i)+cmplx(i,i)-cmplx(j,j))) err = err+1
  end do
end do

if(err .ne. 0) then
  print *, 'NG', err
else
  print *, 'pass'
endif

end

