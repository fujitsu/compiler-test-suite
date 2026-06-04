program main
integer a, b
interface
subroutine s() bind(c,name='_testxx')
end subroutine
end interface

call s
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
  print *,'pass'
else
  write(*,*) "LASTPRIVATE is not active"
end if

end

subroutine s() bind(c,name='_testxx')
end
