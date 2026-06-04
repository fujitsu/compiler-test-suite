program main
integer a(1024), error_cnt

a = 0
error_cnt = 0

!$omp parallel do default(shared)
do i=1, 1024
  a(i) = i
end do
!$omp end parallel do

do i=1, 1024
  if(a(i) .ne. i) then
    error_cnt = 1
    exit
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "SHARED is not active"
end if

end
