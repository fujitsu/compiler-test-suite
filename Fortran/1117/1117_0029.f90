program main
integer a, b

a = 0
b = 0

!$omp parallel shared(a)
!$omp single
  a = a+1
!$omp end single
  b = b+1
!$omp end parallel

if(a .eq. 1) then
  write(*,*) "ok"
else 
  write(*,*) "NG", a, b
end if

end
