program main
integer a, b

!$omp parallel sections lastprivate(a)
  a = 0
  do i=1, 100
    a = a+i
  end do
!$omp section
  a = 0
  do i=1, 100
    a = a-i
  end do
!$omp section
  a = 0
  do i=1, 100
    a = a+((-1)**i)*i
  end do
!$omp end parallel sections

b = 0
do i=1, 100
  b = b+((-1)**i)*i
end do

if(a .eq. b) then
  write(*,*) "ok"
else
  write(*,*) "LASTPRIVATE is not active"
end if

end
