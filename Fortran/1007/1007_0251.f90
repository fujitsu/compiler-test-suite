integer*4:: sum
integer     err
integer*4,dimension(64):: a

!$omp parallel do private(sum)
  do i=1, 64
    call sub(sum, i)
    a(i) = sum
  end do
!$omp end parallel do

  err = 0
  do i=1, 64
    if(a(i) .ne. (i*(i+1))/2) err = err+1
  end do

  if(err .ne. 0) then
    print *, 'NG'
  else
    print *, 'pass'
  endif

end

subroutine sub(i, j)
integer*4 i

i = (j*(j+1))/2
end subroutine

