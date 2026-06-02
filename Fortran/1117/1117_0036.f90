program main
integer a(1024), b, a_error, b_error

a = 0
b = 0
a_error = 0
b_error = 0

!$omp parallel do default(none), private(a, i), lastprivate(b)
  do i=1, 1024
    a(i) = i
    b = i
  end do
!$omp end parallel do

do i=1, 1024
  if(a(i) .ne. 0) then
    a_error = 1
    exit
  end if
end do

if(b .ne. 1024) then
  b_error = 1
end if

if(a_error .ne. 0) then
  write(*,*) "PRIVATE is not active"
end if
if(b_error .ne. 0) then
  write(*,*) "LASTPRIVATE is not active"
end if

if((a_error .eq. 0) .and. (b_error .eq. 0)) then
  write(*,*) "ok"
end if

end
