program main
integer a(32), error_cnt

error_cnt = 0
a = 0

!$omp parallel do default(private)
  do i=1, 32
    a(i) = i
  end do
!$omp end parallel do

do i=1, 32
  if(a(i) .ne. 0) then
    error_cnt = 1
    exit
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "PRIVATE is not active"
end if

end
