program main
integer a, b, c, err_cnt

err_cnt = 0
a = 0
b = 0
c = 0
!$omp parallel
!$omp critical
  a = a+1
  do i=1, 50000000
    if(a .ne. 1) then
      err_cnt = 1
      exit
    end if
    b = b+1
    c = c-1
  end do
  a = 0
!$omp end critical
!$omp end parallel

if(err_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "CRITICAL is not active"
end if

end
