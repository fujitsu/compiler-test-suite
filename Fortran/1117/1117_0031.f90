program main
integer a(32), b, c, error_cnt

error_cnt = 0
a = 100
b = 0
c = 0

!$omp parallel shared(a)
!$omp single firstprivate(a)
  b = b+1
  do i=1, 32
    if(a(i) .ne. 100) then
      c = 1
    end if
    a(i) = i
  end do
!$omp end single
!$omp end parallel

do i=1, 32
  if(a(i) .ne. 100) then
    error_cnt = 1
  end if
end do

if(b .ne. 1) then
  write(*,*) "SINGLE is not active"
end if
if(error_cnt .ne. 0) then
  write(*,*) "PRIVATE is not active"
end if
if(c .ne. 0) then
  write(*,*) "FIRSTPRIVATE is not active"
end if
if(b .eq. 1 .and. error_cnt .eq. 0) then
  write(*,*) "ok"
end if

end
