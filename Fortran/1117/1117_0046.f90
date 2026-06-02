program main
integer b(1024), err_cnt

k = 0
err_cnt = 0

!$omp parallel do ordered
  do i=1, 1024
!$omp ordered
    k = k+1
    b(i) = k
!$omp end ordered
  end do
!$omp end parallel do

do i=1, 1024
  if(i .ne. b(i)) then
     err_cnt = 1
  end if
end do

if(err_cnt .eq. 0) then
   write(*,*) "ok"
else
   write(*,*) "ORDERED is not active"
end if

end program main
