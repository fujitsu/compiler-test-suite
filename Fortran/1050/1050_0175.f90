program main
  integer a,i
  a=0
!$omp parallel
  !$omp do schedule(auto)
    do i=1,100
       !$omp atomic
         a=a+1
    end do
!$omp end parallel
  if (a .ne. 100) print *,"NG : a= ",a
  print *,"pass"
end program main
