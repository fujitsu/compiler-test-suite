program main
integer a(32), err_pri, err_sha

err_pri = 0
err_sha = 0

do i=1, 32
  a(i) = i
end do

i = 0

!$omp parallel default(none), shared(i,a)
!$omp do private(i)
  do i=1, 32
    a(i) = 0
  end do
!$omp end do
!$omp end parallel

if(i .ne. 0) then
  err_pri = 1
end if

do i=1, 32
  if(a(i) .ne. 0) then
    err_sha = 1
  end if
end do

if(err_pri .ne. 0) then
  write(*,*) "DO valiable is not private"
end if
if(err_sha .ne. 0) then
  write(*,*) "SHARED clause is not active"
end if
if((err_pri .eq. 0) .and. (err_sha .eq. 0)) then
  write(*,*) "ok"
end if

end
