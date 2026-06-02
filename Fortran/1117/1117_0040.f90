program main
integer a, b
common /blk1/ a, b
!$omp threadprivate(/blk1/)

a = 1

call sub1()

if(b .ne. 0) then
  print *, 'NG'
else
  print *, 'ok'
end if

end

subroutine sub1()
integer a, b, x(8), err, n, y(32), z(8)
integer omp_get_thread_num
integer omp_get_num_threads
common /blk1/ a, b
!$omp threadprivate(/blk1/)

x = 0
z = 0
err = 0
!$ call omp_set_dynamic(.false.)
!$ call omp_set_num_threads(8)
!$omp parallel do copyin(a), shared(x)
  do i=1, 32
    if(a .ne. 1) err = 1
    b = omp_get_thread_num()
    n = omp_get_num_threads()
    x(b+1) = x(b+1)+a*b
    y(i) = b
  end do
!$omp end parallel do

  if(err .eq. 1) then
    print *, 'NG-copyin'
    stop
  end if

  do i=1, 32
    z(y(i)+1) = z(y(i)+1)+a*y(i)
  end do
  do i=1, n
    if(x(i) .ne. z(i)) err = 2
  end do

  if(err .ne. 0) then
    print *, 'NG'
    stop
  end if
end
