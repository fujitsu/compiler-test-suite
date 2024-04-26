integer omp_get_thread_num
complex*32 a(10,20)
complex*32 b(10,20)
integer err
integer thread_num

thread_num = 0
err = 0

!$omp parallel private(a, thread_num)
!$omp single
  a = cmplx(thread_num,10)
  b = cmplx(thread_num,10)
!$omp end single copyprivate(a)
  do j=1, 20
    do i=1, 10
      if(a(i,j) .ne. b(i,j)) then
!$omp atomic
        err = err+1
      end if
    end do
  end do
!$omp end parallel

end
