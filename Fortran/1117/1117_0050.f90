program main
integer a(1024), error_cnt

a = 0
error_cnt = 0

!$omp parallel sections default(private)
!$omp section
   do i=1, 256
     a(i) = 1
   end do
!$omp section
   do i=257, 512
     a(i) = 2
   end do
!$omp section
   do i=513, 768
     a(i) = 3
   end do
!$omp section
   do i=769, 1024
     a(i) = 4
   end do
!$omp end parallel sections

do i=1, 1024
  if(a(i) .ne. 0) then
    error_cnt = 1
    exit
  end if
end do

if(error_cnt .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "DEFAULT(PRIVATE) is not active"
end if

end
