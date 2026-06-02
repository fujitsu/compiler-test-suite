program main
integer a

a = 0
!$omp parallel
!$omp sections private(a)
!$omp section
  a = 1
!$omp section
  a = 2
!$omp section
  a = 3
!$omp section
  a = 4
!$omp end sections
!$omp end parallel

if(a .eq. 0) then
  write(*,*) "ok"
else
  write(*,*) "NG - ", a
end if

end
